/*
 * WallDetector.h
 *
 *  Created on: 2016/11/11
 *      Author: kerikun11
 */

#ifndef WALLDETECTOR_H_
#define WALLDETECTOR_H_

#include "mbed.h"
#include "config.h"
#include "Reflector.h"

class WallDetector {
public:
	WallDetector(Reflector *rfl) :
			rfl(rfl), updateThread(PRIORITY_WALL_UPDATE, STACK_SIZE_WALL_UPDATE) {
		updateThread.start(this, &WallDetector::updateTask);
		updateTicker.attach_us(this, &WallDetector::updateIsr,
		WALL_UPDATE_PERIOD_US);
	}
	void calibration() {
		rfl->enable();
		Thread::wait(10);
		for (int i = 0; i < 2; i++) {
			_wall_distance.side[i] = 0;
		}
		const int ave_cnt = 500;
		for (int j = 0; j < ave_cnt; j++) {
			Thread::wait(1);
			for (int i = 0; i < 2; i++) {
				_wall_distance.side[i] += rfl->side(i);
			}
		}
		for (int i = 0; i < 2; i++) {
			_wall_distance.side[i] /= ave_cnt;
			_wall_ref.side[i] = _wall_distance.side[i] / WALL_SIDE_DIV;
		}
		for (int i = 0; i < 2; i++) {
			_wall_distance.front[i] = WALL_DETECTOR_FLONT_RATIO * (_wall_distance.side[0] + _wall_distance.side[1]) / 2;
			_wall_ref.front[i] = _wall_distance.front[i] / WALL_FRONT_DIV;
		}
		printf("Wall Calibration:\t%04d\t%04d\t%04d\t%04d\n", (int) _wall_distance.side[0],
				(int) _wall_distance.front[0], (int) _wall_distance.front[1], (int) _wall_distance.side[1]);
	}
	struct WALL {
		bool side[2];
		bool front[2];
	};
	struct WALL_VALUE {
		float side[2];
		float front[2];
	};
	struct WALL wall() {
		return _wall;
	}
	struct WALL_VALUE wall_distance() {
		return _wall_distance;
	}
	struct WALL_VALUE wall_difference() {
		return _wall_difference;
	}
private:
	Reflector *rfl;
	Thread updateThread;
	Ticker updateTicker;
	struct WALL _wall;
	struct WALL_VALUE _wall_ref;
	struct WALL_VALUE _wall_distance;
	struct WALL_VALUE _wall_difference;
	void updateIsr() {
		updateThread.signal_set(0x01);
	}
	void updateTask() {
		while (1) {
			Thread::signal_wait(0x01);

			for (int i = 0; i < 2; i++) {
				int16_t value = rfl->side(i);
				if (value > _wall_ref.side[i] * 1.02)
					_wall.side[i] = true;
				else if (value < _wall_ref.side[i] * 0.98)
					_wall.side[i] = false;
				_wall_difference.side[i] = (_wall_distance.side[i] - value) / _wall_distance.side[i];
			}
			for (int i = 0; i < 2; i++) {
				int16_t value = rfl->front(i);
				if (value > _wall_ref.front[i] * 1.02)
					_wall.front[i] = true;
				else if (value < _wall_ref.front[i] * 0.98)
					_wall.front[i] = false;
				_wall_difference.front[i] = (_wall_distance.front[i] - value) / _wall_distance.front[i];
			}
		}
	}
}
;

#endif /* WALLDETECTOR_H_ */
