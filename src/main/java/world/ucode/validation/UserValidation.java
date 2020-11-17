package world.ucode.validation;

import world.ucode.models.User;

public class UserValidation {

    public boolean isValid(User user) {
        return !user.getFirstName().isEmpty() && !user.getLastName().isEmpty()
                && !user.getLogin().isEmpty() && !user.getPassword().isEmpty()
                && !user.getBirthday().isEmpty() && !user.getAddress().isEmpty()
                && !user.getAboutYou().isEmpty();
    }
}
