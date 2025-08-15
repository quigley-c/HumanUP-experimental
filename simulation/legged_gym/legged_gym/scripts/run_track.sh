robot_name=${1}  # Remove the space around the assignment operator
task_name="${robot_name}_track"

proj_name="${robot_name}_track"
exptid=${2}
traj_name=${4}

# Run the training script
python train.py --task "${task_name}" \
                --resume \
                --resumeid "stage2_get_up" \
                --proj_name "${proj_name}" \
                --exptid "${exptid}" \
                --device "${3}" \
                --num_envs 16 \
                --fix_action_std \
                --traj_name "${traj_name}"\
                #--debug \
                #--num_envs 3072 \
                #--headless \
