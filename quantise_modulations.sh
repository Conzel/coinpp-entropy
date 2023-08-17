for bits in 2 3 4 5 6 7 8 9 10 16 32; do
    for path in "alconzel/coinpp-entropy/l3covn1u" "alconzel/coinpp-entropy/1yswu7i1" "alconzel/coinpp-entropy/gy7vz0q7" "alconzel/coinpp-entropy/3v65q8id" "alconzel/coinpp-entropy/2yd2q2ew"; do
        echo $bits $path
        python quantization.py --wandb_run_path $path --train_mod_dataset modulations_train_3_steps.pt --test_mod_dataset modulations_train_3_steps.pt --num_bits $bits
    done
done

