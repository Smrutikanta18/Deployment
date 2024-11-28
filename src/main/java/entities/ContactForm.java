package entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ContactForm {
    private int id;
    private String firstname;
    private String lastname;
    private String email;
    private String phone;
    private String message;
    private String submittedAt;
}
