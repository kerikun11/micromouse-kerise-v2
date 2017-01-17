/*
 * main.cpp
 *
 *  Created on: 2016/10/23
 *      Author: kerikun11
 */

#include "mbed.h"
#include "rtos.h"

#include "config.h"
#include "Battery.h"
#include "Buzzer.h"
#include "Button.h"
#include "Motor.h"
#include "Encoder.h"
#include "MPU6500.h"
#include "Reflector.h"
#include "WallDetector.h"
#include "SpeedController.h"
#include "MoveAction.h"
#include "MazeSolver.h"

/* define each pointer */
BusOut *led;
Battery *bat;
Buzzer *bz;
Button *btn;

Motor *mt;
Encoders *enc;
MPU6500 *mpu;
Reflector *rfl;
WallDetector *wd;

SpeedController *sc;
MoveAction *ma;
MazeSolver *ms;

bool output = false;

void debug_info() {
	while (1) {
		Thread::wait(200);
//		printf("%.3f,%.3f\n", mpu->velocity.y,sc->actual.trans);

//		printf("%.3f\t%.3f\n", mpu->gyro.z * 180 / M_PI, mpu->angle.z * 180 / M_PI);
//		sc->getPosition().print();

//		printf("%05u\t%05u\t%05u\t%05u\n", rfl->sl(), rfl->fl(), rfl->fr(), rfl->sr());
//		printf("%06.3f\t%06.3f\t%06.3f\t%06.3f\n", wd->wall_difference().side[0], wd->wall_difference().flont[0],
//				wd->wall_difference().flont[1], wd->wall_difference().side[1]);
//		printf("%s %s %s %s\n", wd->wall().side[0] ? "X" : ".", wd->wall().flont[0] ? "X" : ".",
//				wd->wall().flont[1] ? "X" : ".", wd->wall().side[1] ? "X" : ".");

//		const int i = 0;
//		if (output)
//			printf("%.0f,%.0f,%.0f,%.0f,%.0f\n", sc->target.wheel[i] / 10, sc->actual.wheel[i] / 10,
//					sc->Kp * (sc->target.wheel[i] - sc->actual.wheel[i]) / 10,
//					sc->Kp * sc->Ki * (0 - sc->integral.wheel[i]) / 10,
//					sc->Kp * sc->Kd * (0 - sc->differential.wheel[i]) / 10);

//		if (output)
//			printf("%.0f,%.0f\n", sc->target.wheel[i], sc->actual.wheel[i]);
	}
}

void serial_ctrl() {
	while (1) {
		Thread::wait(100);
		int c = getchar();
		if (c == EOF)
			continue;
		printf("%c\n", (char) c);
		switch (c) {
		case 't':
			bz->play(Buzzer::CONFIRM);
			mpu->calibration();
			wd->calibration();
			break;
		case 'g':
			bz->play(Buzzer::CONFIRM);
			mpu->calibration();
			wd->calibration();
			ma->enable();
			break;
		case 'f':
			bz->play(Buzzer::CANCEL);
			ms->terminate();
			break;
		case 's':
			ma->set_action(MoveAction::START_STEP);
			bz->play(Buzzer::SELECT);
			break;
		case 'i':
			ma->set_action(MoveAction::START_INIT);
			bz->play(Buzzer::SELECT);
			break;
		case 'w':
			ma->set_action(MoveAction::GO_STRAIGHT);
			bz->play(Buzzer::SELECT);
			break;
		case 'a':
			ma->set_action(MoveAction::TURN_LEFT_90);
			bz->play(Buzzer::SELECT);
			break;
		case 'd':
			ma->set_action(MoveAction::TURN_RIGHT_90);
			bz->play(Buzzer::SELECT);
			break;
		case 'b':
			ma->set_action(MoveAction::STOP);
			bz->play(Buzzer::SELECT);
			break;
		case 'r':
			ma->set_action(MoveAction::RETURN);
			bz->play(Buzzer::SELECT);
			break;
		case 'z':
			ma->set_action(MoveAction::FAST_TURN_LEFT_90);
			bz->play(Buzzer::SELECT);
			break;
		case 'x':
			ma->set_action(MoveAction::FAST_GO_STRAIGHT);
			bz->play(Buzzer::SELECT);
			break;
		case 'c':
			ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
			bz->play(Buzzer::SELECT);
			break;
		case 'u':
			ms->terminate();
			ma->set_action(MoveAction::START_STEP);
			for (int i = 0; i < 5; i++) {
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::TURN_RIGHT_90);
				ma->set_action(MoveAction::RETURN);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::TURN_LEFT_90);
				ma->set_action(MoveAction::RETURN);
			}
			ma->set_action(MoveAction::TURN_RIGHT_90);
			ma->set_action(MoveAction::TURN_RIGHT_90);
			ma->set_action(MoveAction::RETURN);
			ma->set_action(MoveAction::TURN_LEFT_90);
			ma->set_action(MoveAction::TURN_LEFT_90);
			ma->set_action(MoveAction::START_INIT);
			bz->play(Buzzer::CONFIRM);
			mpu->calibration();
			wd->calibration();
			ma->enable();
			break;
		case 'm':
			bz->play(Buzzer::CONFIRM);
			ms->terminate();
			ms->start();
			break;
		case 'p':
			bz->play(Buzzer::SELECT);
			printf("%05u\t%05u\t%05u\t%05u\n", rfl->sl(), rfl->fl(), rfl->fr(), rfl->sr());
			printf("%06.3f\t%06.3f\t%06.3f\t%06.3f\n", wd->wall_difference().side[0], wd->wall_difference().flont[0],
					wd->wall_difference().flont[1], wd->wall_difference().side[1]);
			printf("%s %s %s %s\n", wd->wall().side[0] ? "X" : ".", wd->wall().flont[0] ? "X" : ".",
					wd->wall().flont[1] ? "X" : ".", wd->wall().side[1] ? "X" : ".");
			printf("Position:\t(%06.1f, %06.1f, %06.3f)\n", sc->getPosition().x, sc->getPosition().y,
					sc->getPosition().theta);
			break;
		}
	}
}

void emergencyTask() {
	while (1) {
		Thread::wait(1);
		if (fabs(mpu->accel.y) > 9800 * 8 || fabs(mpu->gyro.z) > 10 * M_PI) {
			mt->emergency_stop();
			ms->terminate();
			bz->play(Buzzer::EMERGENCY);
			while (mt->isEmergency()) {
				*led = 0xAA;
				Thread::wait(100);
				*led = 0x55;
				Thread::wait(100);
			}
		}
	}
}

int main() {
	/* make instances */
	led = new BusOut(LED1_PIN, LED2_PIN, LED3_PIN, LED4_PIN, LED5_PIN, LED6_PIN, LED7_PIN, LED8_PIN);
	bat = new Battery(BATTERY_PIN);
	bz = new Buzzer(BUZZER_PIN);
	btn = new Button(BUTTON_PIN);

	mt = new Motor;

	enc = new Encoders(ENCODER_L_TIMx, ENCODER_R_TIMx);
	mpu = new MPU6500(MPU6500_MOSI_PIN, MPU6500_MISO_PIN,
	MPU6500_SCLK_PIN,
	MPU6500_SSEL_PIN);

	rfl = new Reflector(IR_LED_SL_FR_PIN, IR_LED_SR_FL_PIN);
	wd = new WallDetector(rfl);

	sc = new SpeedController(mt, enc, mpu);
	ma = new MoveAction(bz, mt, enc, mpu, rfl, wd, sc);
	ms = new MazeSolver(bz, mpu, rfl, ma, wd);

	/* boot */
	{
		printf("\nHello World!\n");
		printf("Battery Voltage: %.3f [V]\n", bat->voltage());
		if (!bat->check()) {
			bz->play(Buzzer::LOW_BATTERY);
			printf("Battery Low!\n");
			while (1) {
				Thread::wait(10);
				if (btn->pressed) {
					btn->flags = 0;
					break;
				}
			}
		}
		bz->play(Buzzer::BOOT);
		int gage = bat->gage(9);
		for (int i = 0; i < gage; i++)
			(*led)[i] = 1;
		Thread::wait(1000);
		*led = 0;
	}

	/* for debug */
	Thread debugInfoThread(PRIORITY_DEBUG_INFO, STACK_SIZE_DEBUG_INFO);
	debugInfoThread.start(debug_info);
	Thread serialCtrlThread(PRIORITY_SERIAL_CTRL, STACK_SIZE_SERIAL_CTRL);
	serialCtrlThread.start(serial_ctrl);
	Thread emergencyThread(PRIORITY_EMERGENCY_STOP, STACK_SIZE_EMERGENCY);
	emergencyThread.start(emergencyTask);

//	while (1) {
//		while (1) {
//			Thread::wait(10);
//			if (btn->pressed) {
//				btn->flags = 0;
//				bz->play(Buzzer::CONFIRM);
//				break;
//			}
//		}
//		Thread::wait(1000);
//		sc->enable();
//		output = true;
//		sc->set_target(600, 0);
//		Thread::wait(400);
//		sc->set_target(0, 0);
//		Thread::wait(400);
//		output = false;
//		sc->disable();
//	}

	int mode = 0;
	while (true) {
		Thread::wait(10);
		while (mt->isEmergency()) {
			Thread::wait(10);
			if (btn->pressed) {
				btn->flags = 0;
				bz->play(Buzzer::BOOT);
				mt->emergency_release();
				*led = 0;
				printf("Released Emergency\n");
			}
		}
		while (ma->actions()) {
			Thread::wait(10);
			if (btn->pressed) {
				btn->flags = 0;
				bz->play(Buzzer::CANCEL);
				ms->terminate();
			}
		}
		if (btn->pressed) {
			btn->flags = 0;
			bz->play(Buzzer::CONFIRM);
			while (1) {
				Thread::wait(100);
				mode = enc->position() / 2;
				mode &= 0xF;
				*led = mode;
				if (btn->pressed) {
					btn->flags = 0;
					bz->play(Buzzer::CONFIRM);
					break;
				}
			}
			rfl->enable();
			while (1) {
				Thread::wait(10);
				if (rfl->flont(0) > 400 && rfl->flont(1) > 400) {
					bz->play(Buzzer::CONFIRM);
					Thread::wait(200);
					switch (mode) {
					case 0:
						ms->terminate();
						ms->start();
						break;
					case 1:
						ms->terminate();
						ma->set_action(MoveAction::START_STEP);
						for (int i = 0; i < 2; i++) {
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::TURN_RIGHT_90);
							ma->set_action(MoveAction::RETURN);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::TURN_LEFT_90);
							ma->set_action(MoveAction::RETURN);
						}
						ma->set_action(MoveAction::TURN_RIGHT_90);
						ma->set_action(MoveAction::TURN_RIGHT_90);
						ma->set_action(MoveAction::RETURN);
						ma->set_action(MoveAction::TURN_LEFT_90);
						ma->set_action(MoveAction::TURN_LEFT_90);
						ma->set_action(MoveAction::START_INIT);
						mpu->calibration();
						wd->calibration();
						ma->enable();
						break;
					case 2:
						ma->set_action(MoveAction::FAST_GO_HALF);
						ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						for (int i = 0; i < 4; i++) {
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						}
						ma->set_action(MoveAction::FAST_TURN_LEFT_90);
						mpu->calibration();
						wd->calibration();
						ma->enable();
						break;
					case 3:
						ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						ma->set_action(MoveAction::FAST_TURN_LEFT_90);
						for (int i = 0; i < 2; i++) {
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
						}
						mpu->calibration();
						wd->calibration();
						ma->enable();
						break;
					case 4:
						ma->set_action(MoveAction::FAST_GO_HALF);
						ma->set_action(MoveAction::FAST_GO_STRAIGHT);
						for (int i = 0; i < 4; i++) {
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_HALF);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_180);
							ma->set_action(MoveAction::FAST_GO_HALF);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						}
						mpu->calibration();
						wd->calibration();
						ma->enable();
						break;
					case 5:
						ma->set_action(MoveAction::FAST_GO_HALF);
						ma->set_action(MoveAction::FAST_GO_STRAIGHT);
						for (int i = 0; i < 4; i++) {
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, 6);
							ma->set_action(MoveAction::FAST_GO_HALF);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_180);
							ma->set_action(MoveAction::FAST_GO_HALF);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT, 6);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						}
						mpu->calibration();
						wd->calibration();
						ma->enable();
						break;
					case 6:
						ma->set_action(MoveAction::FAST_GO_STRAIGHT);
						for (int i = 0; i < 4; i++) {
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						}
						mpu->calibration();
						wd->calibration();
						ma->enable();
						break;
					case 7:
						ma->set_action(MoveAction::FAST_GO_STRAIGHT);
						for (int i = 0; i < 4; i++) {
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						}
						ma->set_action(MoveAction::FAST_GO_STRAIGHT);
						mpu->calibration();
						wd->calibration();
						ma->enable();
						break;
					case 8:
						ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						for (int i = 0; i < 3; i++) {
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_TURN_LEFT_90);
							ma->set_action(MoveAction::FAST_GO_STRAIGHT);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
							ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						}
						ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						ma->set_action(MoveAction::FAST_GO_STRAIGHT, 6);
						ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						ma->set_action(MoveAction::FAST_TURN_RIGHT_90);
						mpu->calibration();
						wd->calibration();
						ma->enable();
						break;
					}
					break;
				}
				if (btn->pressed) {
					btn->flags = 0;
					bz->play(Buzzer::CANCEL);
					ms->terminate();
					rfl->disable();
					break;
				}
			}
		}
	}
}
