# /dev/video0
# /dev/video2 

python -m lerobot.record \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM_5A68011650 \
    --robot.id=hackafollower \
    --robot.cameras="{ wrist: {type: opencv, index_or_path: 6, width: 640, height: 480, fps: 30}, top: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}, front: {type: opencv, index_or_path: 9, width: 640, height: 480, fps: 30}}" \
    --teleop.type=so101_leader \
    --teleop.port=/dev/ttyACM_5A68011491 \
    --teleop.id=hackaleader \
    --display_data=false \
    --dataset.repo_id=jquast/red_ball_3cams_1 \
    --dataset.reset_time_s=5 \
    --dataset.push_to_hub=false \
    --dataset.private=true \
    --dataset.num_episodes=7 \
    --resume=true \
    --dataset.single_task="Put the red ball to the cup"