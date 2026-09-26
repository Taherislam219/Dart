enum Gender { Male, Female, Others }

void main() {
  for (Gender gender in Gender.values) {
    print(gender.name);
  }
}
