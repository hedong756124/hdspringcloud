/**
 * 
 */
package com.honghu.cloud.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author jackyhu
 *
 */
@Component
@ConfigurationProperties(prefix = "oauth")
public class OAuthServiceConfig {

	private String grantType;
	private String scope;
	private String clientId;
	private String clientSecret;
	private String serverUrl;
	private String tokenCheckUrl;
	
	public String getGrantType() {
		return grantType;
	}
	public void setGrantType(String grantType) {
		this.grantType = grantType;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public String getClientId() {
		return clientId;
	}
	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
	public String getClientSecret() {
		return clientSecret;
	}
	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}
	public String getServerUrl() {
		return serverUrl;
	}
	public void setServerUrl(String serverUrl) {
		this.serverUrl = serverUrl;
	}
	public String getTokenCheckUrl() {
		return tokenCheckUrl;
	}
	public void setTokenCheckUrl(String tokenCheckUrl) {
		this.tokenCheckUrl = tokenCheckUrl;
	}
	
}
