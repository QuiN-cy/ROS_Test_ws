#!/usr/bin/env python
# -*- coding: utf-8 -*-
###########################################################
#               WARNING: Generated code!                  #
#              **************************                 #
# Manual changes may get lost if file is generated again. #
# Only code inside the [MANUAL] tags will be kept.        #
###########################################################

from flexbe_core import Behavior, Autonomy, OperatableStateMachine, ConcurrencyContainer, PriorityContainer, Logger
from binpicking_flexbe_behaviors.conveyor_pickup_sm import Conveyor_pickupSM
from binpicking_flexbe_behaviors.agv_place_sm import AGVPlaceSM
# Additional imports can be added inside the following tags
# [MANUAL_IMPORT]

# [/MANUAL_IMPORT]


'''
Created on Fri Jun 04 2021
@author: q / y
'''
class ProjectHelloRealworldROS1SM(Behavior):
	'''
	main project
	'''


	def __init__(self):
		super(ProjectHelloRealworldROS1SM, self).__init__()
		self.name = 'Project Hello Realworld ROS 1 '

		# parameters of this behavior

		# references to used behaviors
		self.add_behavior(Conveyor_pickupSM, 'Conveyor_pickup')
		self.add_behavior(AGVPlaceSM, 'AGV Place')

		# Additional initialization code can be added inside the following tags
		# [MANUAL_INIT]
		
		# [/MANUAL_INIT]

		# Behavior comments:



	def create(self):
		# x:801 y:65, x:286 y:519
		_state_machine = OperatableStateMachine(outcomes=['finished', 'failed'])

		# Additional creation code can be added inside the following tags
		# [MANUAL_CREATE]
		
		# [/MANUAL_CREATE]


		with _state_machine:
			# x:101 y:63
			OperatableStateMachine.add('Conveyor_pickup',
										self.use_behavior(Conveyor_pickupSM, 'Conveyor_pickup'),
										transitions={'finished': 'AGV Place', 'failed': 'failed'},
										autonomy={'finished': Autonomy.Inherit, 'failed': Autonomy.Inherit})

			# x:338 y:63
			OperatableStateMachine.add('AGV Place',
										self.use_behavior(AGVPlaceSM, 'AGV Place'),
										transitions={'finished': 'finished', 'failed': 'failed'},
										autonomy={'finished': Autonomy.Inherit, 'failed': Autonomy.Inherit})


		return _state_machine


	# Private functions can be added inside the following tags
	# [MANUAL_FUNC]
	
	# [/MANUAL_FUNC]
