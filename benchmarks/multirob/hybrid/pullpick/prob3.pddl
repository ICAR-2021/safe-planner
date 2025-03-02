(define (problem prob2)
(:domain pullandpick)
(:objects 
          left_arm right_arm - arm
          object1 object2 object3 - graspable)

(:init 
          (free left_arm)
          (free right_arm)

          (ontable object1)
          (ontable object2)
          (ontable object3)

          (ungrasped object1)
          (ungrasped object2)
          (ungrasped object3)

          (reachable left_arm object1)
          (reachable left_arm object2)
          (reachable left_arm object3)

          (reachable right_arm object1)
          (reachable right_arm object2)
          (reachable right_arm object3)

          ;;;;;;;;;;;;;;;;;;;;;;;;;;
          ;; constraint 1 when an arm obstructs another object
          ; (grasped left_arm object2)
          ; (obstructed object1 left_arm)

          ;;;;;;;;;;;;;;;;;;;;;;;;;;
          ;; constraint 2
          ; (unobstructed object1)
          ; (unobstructed object2)
          (unobstructed object3)

          (obstructed object1 object2)
          (obstructed object2 object3)

          ;;;;;;;;;;;;;;;;;;;;;;;;;;
          ;; constraint 3
          (nearby object1 left_arm)
          (nearby object1 right_arm)
          (nearby object2 left_arm)
          (nearby object2 right_arm)
          (nearby object3 left_arm)
          (nearby object3 right_arm)

          ; (heavy object1 left_arm)
          ; (heavy object1 right_arm)
          ; (heavy object2 left_arm)
          ; (heavy object2 right_arm)
          )

(:goal  (and
          (lifted object1)
          ; (lifted object2)
        ))
)