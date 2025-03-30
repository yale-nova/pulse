for client_threads in 8 16
do
    for window_size in 1 2 4 8 16
    do
        echo $client_threads $window_size
        sed -i "s/--num_client_threads [0-9]*/--num_client_threads $client_threads/; s/--window_size [0-9]*/--window_size $window_size/" /home/yupeng/pulse/apps/webservice/config/clientconfig
        ./scripts/do.sh webservice_single 1 0 /home/yupeng/pulse/apps/webservice/config/clientconfig &> log_${client_threads}_${window_size}
    done
done

# Reset default
sed -i "s/--num_client_threads [0-9]*/--num_client_threads 16/; s/--window_size [0-9]*/--window_size 2/" /home/yupeng/pulse/apps/webservice/config/clientconfig
