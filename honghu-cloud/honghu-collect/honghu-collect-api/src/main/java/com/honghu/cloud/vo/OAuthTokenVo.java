/**
 * 
 */
package com.honghu.cloud.vo;

import lombok.Data;

/**
 * {
		    "access_token": "a1f68a12-3b01-41a6-8aa0-fb9fdbf5d12d", 
		    "token_type": "bearer", 
		    "refresh_token": "0bcbc635-dfdd-4466-bbdd-d7096cb08a0c", 
		    "expires_in": 59, 
		    "scope": "read write"
		}
		
 * @author jackyhu
 *
 */
@Data
public class OAuthTokenVo {

	private String accessToken;
	private String tokenType;
	private String webTokent;
	private String refreshToken;
	private long expiresIn;
	private String scope;

}
