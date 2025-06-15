python -m lerobot.record  \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM_5A68011650 \
  --robot.id=hackafollower \
  --robot.cameras="{ wrist: {type: opencv, index_or_path: 6, width: 640, height: 480, fps: 30}, top: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --display_data=false \
  --dataset.repo_id=jquast/eval_red_ball_3 \
  --dataset.single_task="Put the red ball to the cup" \
  --policy.path=/home/jquast/.cache/huggingface/hub/models--kprokofi--smolavla_red_ball_simple/snapshots/de7d242539c596b1430ce7a5b7dee1983edc2083/pretrained_model/