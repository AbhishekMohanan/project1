package com.storemanagement.storemanagement.serviceclass;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.storemanagement.storemanagement.model.User;
import com.storemanagement.storemanagement.model.Role;
import com.storemanagement.storemanagement.repository.UserRepository;
import com.storemanagement.storemanagement.serviceinterface.UserService;



@Service
public class Userservice implements UserDetailsService, UserService{


	    @Autowired
	    UserRepository userRepository;

	    @Override
	    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
	        Optional<User> user = userRepository.findByUserName(userName);

	        user.orElseThrow(() -> new UsernameNotFoundException("Not found: " + userName));

	        return user.map(Role::new).get();
	    }

		@Override
		public List<User> viewUser() {
			return userRepository.findAll();
		}

		@Override
		public void insertUser(User user) {
			this.userRepository.save(user);
			
		}

		@Override
		public void deleteUser(int personId) {
			this.userRepository.deleteById(personId);
			
		}

		@Override
		public User editpage(int personId) {
			return userRepository.findById(personId).get();
		}
	}

	

