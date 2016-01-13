STUDENT_ID=5XXXXXXXX
HOMEWORK=HW02_3
TASKNAME=T112_$(HOMEWORK)
OUTPUT=palindrome_in_base

$(OUTPUT): main.o $(HOMEWORK)_$(STUDENT_ID).o
	gcc -Wall -o $(OUTPUT) main.o $(HOMEWORK)_$(STUDENT_ID).o

main.o: main.c $(TASKNAME).h
	gcc -Wall -c main.c

$(HOMEWORK)_$(STUDENT_ID).o: $(HOMEWORK)_$(STUDENT_ID).c $(TASKNAME).h
	gcc -Wall -c $(HOMEWORK)_$(STUDENT_ID).c

clean:
	rm -vf *.o *.exe $(OUTPUT)

