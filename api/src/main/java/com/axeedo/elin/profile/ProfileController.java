package com.axeedo.elin.profile;

import jakarta.websocket.server.PathParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProfileController {
    @GetMapping("/profile")
    Profile getProfile(@PathParam("id") Long id){
        return new Profile(162527L, "My Profile", "This is my rather not so long bio!", "[link to profile picture");
    }
}
