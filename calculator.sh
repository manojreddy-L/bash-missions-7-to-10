
#!/bin/bash

add() { echo "Result: $(($1 + $2))"; }
sub() { echo "Result: $(($1 - $2))"; }
mul() { echo "Result: $(($1 * $2))"; }
div() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero"
  else
    echo "Result: $(($1 / $2))"
  fi
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "Choose operation: 1) Add  2) Subtract  3) Multiply  4) Divide"
read op

case $op in
  1) add $num1 $num2 ;;
  2) sub $num1 $num2 ;;
  3) mul $num1 $num2 ;;
  4) div $num1 $num2 ;;
  *) echo "Invalid option" ;;
esac





