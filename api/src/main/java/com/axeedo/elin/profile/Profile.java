package com.axeedo.elin.profile;

import jakarta.persistence.Entity;
import lombok.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Profile {
    @NonNull
    private Long id;
    private String profileName;
    private String bio;
    private String profilePicture;


}
