package entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class AddProject {
    private int id;
    private String url;
    private String status;
    private String name;
    private String image;
    private String map;
    private String fplan;
    private String location;
    private String details;
}
