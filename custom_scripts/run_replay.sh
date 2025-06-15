python -m lerobot.replay \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM_5A68011650 \
    --robot.id=hackafollower \
    --dataset.repo_id=jquast/lecroc_gestures_1 \
    --dataset.episode=5 \
    --play_sounds False

    #--dataset.repo_id=jquast/red_ball_1 \
