package com.honghu.cloud.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;

import com.honghu.cloud.common.bean.CommonConsts;

public class DealerUserBeanUtils {
	public static SimpleDateFormat df = new SimpleDateFormat(CommonConsts.DEFAULT_DATA_TIME_FORMAT);

	/*public static User toEntity(DealerUser dealerUser) throws ParseException {

		if (dealerUser != null) {
			User daUser = new User();
			daUser.setId(dealerUser.getUserId());
			daUser.setPwd(dealerUser.getPwd());
			daUser.setName(dealerUser.getName());
			daUser.setGender(dealerUser.getGender());
			daUser.setDutyId(dealerUser.getDutyId());
			daUser.setMobile(dealerUser.getMobile());
			daUser.setTelephone(dealerUser.getTelephone());
			daUser.setWechat(dealerUser.getWechat());
			daUser.setEmail(dealerUser.getEmail());
			daUser.setStatus(dealerUser.getStatus());
			daUser.setCreateTime(new Timestamp(df.parse(dealerUser.getCreateTime()).getTime()));
			daUser.setUpdateTime(new Timestamp(df.parse(dealerUser.getUpdateTime()).getTime()));
			daUser.setRemark(dealerUser.getRemark());
			daUser.setImage(dealerUser.getImage());
			return daUser;

		} else {
			return null;
		}
	}

	public static DealerUser toMobel(User user) {

		if (user != null) {
			return DealerUser.builder().userId(user.getUserId()).orgId(user.getOrgId()).pwd(user.getPwd())
					.name(user.getName()).gender(user.getGender()).dutyId(user.getDutyId()).mobile(user.getMobile())
					.telephone(user.getTelephone()).wechat(user.getWechat()).email(user.getEmail())
					.status(user.getStatus())
					.createTime((user.getCreateTime() != null) ? df.format(user.getCreateTime()) : "")
					.updateTime((user.getUpdateTime() != null) ? df.format(user.getUpdateTime()) : "")
					.remark(user.getRemark()).image(user.getImage()).build();
		} else {
			return null;
		}
	}

	public static List<DealerUser> toMobelList(List<User> userList) {
		List<DealerUser> retList = new ArrayList<DealerUser>();
		for (User user : userList) {
			retList.add(DealerUser.builder().userId(user.getUserId()).orgId(user.getOrgId()).pwd(user.getPwd())
					.name(user.getName()).gender(user.getGender()).dutyId(user.getDutyId()).mobile(user.getMobile())
					.telephone(user.getTelephone()).wechat(user.getWechat()).email(user.getEmail())
					.status(user.getStatus())
					.createTime((user.getCreateTime() != null) ? df.format(user.getCreateTime()) : "")
					.updateTime((user.getUpdateTime() != null) ? df.format(user.getUpdateTime()) : "")
					.remark(user.getRemark()).image(user.getImage()).build());
		}
		return retList;
	}*/

	/**
	 * 
	 * @return newPassword
	 */
	public static String generatorNewPassword() {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 7; i++) {
			sb.append(CommonConsts.PASSWORD_CANUSR_CHAR.charAt(getRandom(62)));
		}
		String suiji7Str = sb.toString();
		String suiji8Str = insertNumIntoString(suiji7Str, String.valueOf(getRandom(10)), getRandom(7));

		return suiji8Str;
	}

	/**
	 * 
	 * @param input
	 * @return Random
	 */
	public static int getRandom(int input) {
		return (int) (Math.random() * input);
	}

	/**
	 * 
	 * @param input
	 * @param num
	 * @param offset
	 * @return
	 */
	public static String insertNumIntoString(String input, String num, int offset) {
		if (offset > input.length()) {
			return null;
		}
		StringBuffer sb = new StringBuffer();
		sb.append(input.substring(0, offset));
		sb.append(num);
		sb.append(input.substring(offset));
		return sb.toString();
	}

	/**
	 * 
	 * @param input
	 * @return
	 */
	public static String inversionString(String input) {
		char[] doing = input.toCharArray();
		for (int ii = 0; ii < (doing.length / 2); ii++) {
			char trans = doing[ii];
			doing[ii] = doing[doing.length - 1 - ii];
			doing[doing.length - 1 - ii] = trans;
		}
		return new String(doing);
	}

	/**
	 * 
	 * @param plainText
	 * @return MD5
	 */
	public static String getMd5(String plainText) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			byte b[] = md.digest();

			int i;

			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			// 32位加密
			return buf.toString();
			// 16位的加密
			// return buf.toString().substring(8, 24);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}

	 /*public static void main(String[] args) {
		 try {
			 System.out.println(getMd5("123456"));
		 }catch(Exception e) {
		
		 }
	 }*/
}
