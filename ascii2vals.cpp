#include <iostream>
#include <bitset>
#include <string>
#include <iomanip>
using namespace std;

int main()
{
	cout << "\033[2J\033[1;1H";
	string input;
	cout << "Start:" << endl
	<< string(16, '-')
	<< "\n\n";

	while (true) {
		cout << "> ";
		getline(cin, input);
		cout << "•" << string(51, '-') << "•" << endl;
		for (char ch : input) {
			string binary = bitset<8>(ch).to_string();
			cout << left
			<< "| " << ch << " "
			<< "| " << "dec: "
			<< setw(3) << dec << int(ch) << " "
			<< "| " << "hex: "
			<< setw(2) << hex << uppercase << int(ch) << " "
			<< "| " << "oct: "
			<< setw(3) << oct << int(ch) << " "
			<< "| " << "bin: "
			<< setw(8) << binary << " |"
			<< endl;
		}
		cout << "•" << string(51, '-') << "•" << endl << endl;
	}
}
