/**
 Copyright (c) 2017 Rafal Biegacz
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
*/

#include <iostream>

using namespace std;

int main (int argc, char **argv) {
    const int ARRAY_SIZE = 1024;
    const int ARRAY_BYTES = ARRAY_SIZE * sizeof(float);
    
    float h_in[ARRAY_SIZE];
    float h_out[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; i++) {
      h_in[i] = float(i);
    }


    for (int i = 0; i < ARRAY_SIZE; i++) {
      h_out[i] = h_in[i] * h_in[i];
    }

    // print out the resulting array
    for (int i = 0; i < ARRAY_SIZE; i++) {
      std::cout << h_out[i];
      ((i % 4) != 3) ? std::cout << "\t" : std::cout << "\n";
    }
    return 0;
}
