#include <h5pp/h5pp.h>
#include <string>

std::string path{"/Users/amirnourinia/Data/FastMRI/multicoil_train/file_brain_AXFLAIR_200_6002425.h5"};

int main() {
  h5pp::File file(path, h5pp::FileAccess::READONLY);  // Open (or create) a file
    file.getDatasetInfo()
  auto v = file.readDataset<std::vector<double>>(
      "myStdVector");  // Read the dataset from file
}
