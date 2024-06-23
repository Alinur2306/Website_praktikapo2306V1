#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Simple interest formula
    simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Простой процент составляет: $simple_interest"
}

# Read principal, rate and time from the user
read -p "Введите основную сумму (principal): " principal
read -p "Введите процентную ставку (rate): " rate
read -p "Введите время (time): " time

# Validate input
if [[ ! $principal =~ ^[0-9]+(\.[0-9]+)?$ || ! $rate =~ ^[0-9]+(\.[0-9]+)?$ || ! $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Ошибка: Ввод должен быть положительным числом."
    exit 1
fi

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
