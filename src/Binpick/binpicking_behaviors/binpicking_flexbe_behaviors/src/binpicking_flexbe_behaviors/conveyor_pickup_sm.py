#!/usr/bin/env python
# -*- coding: utf-8 -*-
###########################################################
#               WARNING: Generated code!                  #
#              **************************                 #
# Manual changes may get lost if file is generated again. #
# Only code inside the [MANUAL] tags will be kept.        #
###########################################################

from flexbe_core import Behavior, Autonomy, OperatableStateMachine, ConcurrencyContainer, PriorityContainer, Logger
from binpicking_flexbe_states.capture_pointcloud_state import CapturePointcloudState
from binpicking_flexbe_states.calculate_object_pose_state import CalculateObjectPoseState
from miscellaneous_flexbe_states.message_state import MessageState
from binpicking_flexbe_states.compute_grasp_state import ComputeGraspState
from binpicking_flexbe_states.moveit_to_joints_dyn_state import MoveitToJointsDynState as binpicking_flexbe_states__MoveitToJointsDynState
from flexbe_manipulation_states.srdf_state_to_moveit import SrdfStateToMoveit
from flexbe_states.wait_state import WaitState
# Additional imports can be added inside the following tags
# [MANUAL_IMPORT]

# [/MANUAL_IMPORT]


'''
Created on 21-05-2021
@author: Youp de haas, Quincy de Jong, Sam Schrauwen, Thom Snikkers, Lein van Sluijs
'''
class Conveyor_pickupSM(Behavior):
	'''
	Projectgroep 1
	'''


	def __init__(self):
		super(Conveyor_pickupSM, self).__init__()
		self.name = 'Conveyor_pickup'

		# parameters of this behavior

		# references to used behaviors

		# Additional initialization code can be added inside the following tags
		# [MANUAL_INIT]
		
		# [/MANUAL_INIT]

		# Behavior comments:



	def create(self):
		pick_group = 'manipulator'
		names = ['shoulder_pan_joint', 'shoulder_lift_joint', 'elbow_joint', 'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']
		gripper = 'epick_gripper_BasePickPointLink'
		gripper_device = '/dev/ttyUSB0'
		# x:270 y:858, x:587 y:893
		_state_machine = OperatableStateMachine(outcomes=['finished', 'failed'])
		_state_machine.userdata.pointcloud = []
		_state_machine.userdata.object_pose = []
		_state_machine.userdata.pick_configuration = []
		_state_machine.userdata.suction_cup_offset = -0.10
		_state_machine.userdata.rotation = 0
		_state_machine.userdata.move_group_prefix = ''
		_state_machine.userdata.move_group = "manipulator"
		_state_machine.userdata.ee_link = 'epick_gripper_BasePickPointLink'
		_state_machine.userdata.suction_cup_Pregrasp = 0.1

		# Additional creation code can be added inside the following tags
		# [MANUAL_CREATE]
		
		# [/MANUAL_CREATE]


		with _state_machine:
			# x:57 y:101
			OperatableStateMachine.add('wait_7',
										WaitState(wait_time=1),
										transitions={'done': 'GaBandPositie'},
										autonomy={'done': Autonomy.Off})

			# x:228 y:299
			OperatableStateMachine.add('ObjectPose',
										CalculateObjectPoseState(),
										transitions={'continue': 'MessageState', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off},
										remapping={'pointcloud': 'pointcloud', 'object_pose': 'object_pose'})

			# x:223 y:374
			OperatableStateMachine.add('MessageState',
										MessageState(),
										transitions={'continue': 'ComputePregrasp'},
										autonomy={'continue': Autonomy.Off},
										remapping={'message': 'object_pose'})

			# x:232 y:446
			OperatableStateMachine.add('ComputePregrasp',
										ComputeGraspState(joint_names=names, time_out=3.0),
										transitions={'continue': 'ComputeObject', 'failed': 'failed', 'time_out': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off, 'time_out': Autonomy.Off},
										remapping={'move_group': 'move_group', 'move_group_prefix': 'move_group_prefix', 'tool_link': 'ee_link', 'pose': 'object_pose', 'offset': 'suction_cup_Pregrasp', 'rotation': 'rotation', 'joint_values': 'joint_values_pregrasp', 'joint_names': 'joint_names_pregrasp'})

			# x:231 y:589
			OperatableStateMachine.add('MoveToObjectPregrasp',
										binpicking_flexbe_states__MoveitToJointsDynState(),
										transitions={'reached': 'MoveToObject', 'planning_failed': 'failed', 'control_failed': 'wait_4'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off},
										remapping={'move_group_prefix': 'move_group_prefix', 'move_group': 'move_group', 'action_topic': 'action_topic', 'joint_values': 'joint_values_pregrasp', 'joint_names': 'joint_names_pregrasp'})

			# x:226 y:91
			OperatableStateMachine.add('GaBandPositie',
										SrdfStateToMoveit(config_name='BandPG', move_group=pick_group, action_topic='/move_group', robot_name=""),
										transitions={'reached': 'Pregrasp', 'planning_failed': 'failed', 'control_failed': 'wait_7', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'config_name', 'move_group': 'move_group', 'robot_name': 'robot_name', 'action_topic': 'action_topic', 'joint_values': 'joint_values', 'joint_names': 'joint_names'})

			# x:226 y:162
			OperatableStateMachine.add('Pregrasp',
										SrdfStateToMoveit(config_name='PhotoPosBand', move_group=pick_group, action_topic='/move_group', robot_name=""),
										transitions={'reached': 'Pointcloud', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'config_name', 'move_group': 'move_group', 'robot_name': 'robot_name', 'action_topic': 'action_topic', 'joint_values': 'joint_values', 'joint_names': 'joint_names'})

			# x:233 y:674
			OperatableStateMachine.add('MoveToObject',
										binpicking_flexbe_states__MoveitToJointsDynState(),
										transitions={'reached': 'MoveToObjectPregrasp_2', 'planning_failed': 'failed', 'control_failed': 'wait_4'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off},
										remapping={'move_group_prefix': 'move_group_prefix', 'move_group': 'move_group', 'action_topic': 'action_topic', 'joint_values': 'joint_values', 'joint_names': 'joint_names'})

			# x:232 y:519
			OperatableStateMachine.add('ComputeObject',
										ComputeGraspState(joint_names=names, time_out=3.0),
										transitions={'continue': 'MoveToObjectPregrasp', 'failed': 'failed', 'time_out': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off, 'time_out': Autonomy.Off},
										remapping={'move_group': 'move_group', 'move_group_prefix': 'move_group_prefix', 'tool_link': 'ee_link', 'pose': 'object_pose', 'offset': 'suction_cup_offset', 'rotation': 'rotation', 'joint_values': 'joint_values', 'joint_names': 'joint_names'})

			# x:225 y:750
			OperatableStateMachine.add('MoveToObjectPregrasp_2',
										binpicking_flexbe_states__MoveitToJointsDynState(),
										transitions={'reached': 'finished', 'planning_failed': 'failed', 'control_failed': 'wait_5'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off},
										remapping={'move_group_prefix': 'move_group_prefix', 'move_group': 'move_group', 'action_topic': 'action_topic', 'joint_values': 'joint_values_pregrasp', 'joint_names': 'joint_names_pregrasp'})

			# x:57 y:589
			OperatableStateMachine.add('wait_4',
										WaitState(wait_time=1),
										transitions={'done': 'MoveToObjectPregrasp'},
										autonomy={'done': Autonomy.Off})

			# x:57 y:752
			OperatableStateMachine.add('wait_5',
										WaitState(wait_time=1),
										transitions={'done': 'MoveToObjectPregrasp_2'},
										autonomy={'done': Autonomy.Off})

			# x:232 y:229
			OperatableStateMachine.add('Pointcloud',
										CapturePointcloudState(),
										transitions={'continue': 'ObjectPose', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off},
										remapping={'pointcloud': 'pointcloud'})


		return _state_machine


	# Private functions can be added inside the following tags
	# [MANUAL_FUNC]
	
	# [/MANUAL_FUNC]
