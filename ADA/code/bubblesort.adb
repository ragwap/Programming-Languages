with Ada.Text_IO; 		use Ada.Text_IO;
with Ada.Integer_Text_IO; 	use Ada.Integer_Text_IO;

procedure Bubblesort is
	numArr: 	array (0..4) of Integer;
	testArr:        array (0..4) of Integer;
	num : 		Integer;
	numLen:		Integer;
	temp:		Integer;
	testVal:        Integer;
begin
	numLen := numArr'Length;

	Put("Array Size: ");
	Put(numLen);
	New_Line(2);

	--Initializing Array
	for i in 0..4 loop
		numArr(i) := 0;
	end loop;

	--Assigning values to Array
	for i in 0..4 loop
		Put("Enter Number ");
		Put(i + 1);
		Put(": ");
		Get(num);
                numArr(i) := num;
        end loop;

	--Sorting with bubblesort
	while numLen > 0 loop
		for i in 1..4 loop
			if numArr(i-1) > numArr(i) then
				temp := numArr(i);
				numArr(i) := numArr(i-1);
				numArr(i-1) := temp;
			end if;
		end loop;
		numLen := numLen - 1;
	end loop;
	
	New_Line(2);
        Put_Line("-----After Sorting with Bubblesort-----");
	--Display sorted array
	for i in 0..4 loop
		Put(numArr(i));
		New_Line(1);
	end loop;

	--Testing Part
	New_Line(2);
	Put_Line("-----Testing-----");
	testVal := 5;
	for i in 0..4 loop
		testArr(i) := testVal;
		testVal := testVal - 1;
	end loop;

	New_Line(1);
	Put_Line("Testing Array: ");

	for i in 0..4 loop
		Put(testArr(i));
		New_Line(1);
	end loop;

	Put_Line("Expected Output: ");
	for i in 0..4 loop
                Put(i + 1);
		New_Line(1);
        end loop;

	Put_Line("Actual Output: ");
	testVal := 5;
        while testVal > 0 loop
                for i in 1..4 loop
                        if testArr(i-1) > testArr(i) then
                                temp := testArr(i);
                                testArr(i) := testArr(i-1);
                                testArr(i-1) := temp;
                        end if;
                end loop;
                testVal := testVal - 1;
        end loop;

	for i in 0..4 loop
                Put(testArr(i));
                New_Line(1);
        end loop;

end Bubblesort;

