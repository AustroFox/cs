package de.ihrprof.cstutorial;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class HashEncode {

    public static String sha256encode(String password) {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(HashEncode.class.getName()).log(Level.SEVERE, null, ex);
            return "";
        }
        md.update(password.getBytes());
        byte[] hashcode = md.digest();
        String hexResult = bytesToHex(hashcode);
        System.out.println("Passwort: " + password + " => " + hexResult);
        return hexResult;
    }

    public static String bytesToHex(byte[] hashcode) {
        final StringBuilder builder = new StringBuilder();
        for (byte b : hashcode) {
            builder.append(String.format("%02x", b));
        }
        return builder.toString();
    }
}
