package com.dx21601.pojo;

public class Hours {
    private String hSid;

    private String hName;

    private String hShengfen;

    private String hCity;

    private String hXiangxi;

    private String hJingdu;

    private String hWeidu;

    public Hours(String hSid, String hName, String hShengfen, String hCity, String hXiangxi, String hJingdu, String hWeidu) {
        this.hSid = hSid;
        this.hName = hName;
        this.hShengfen = hShengfen;
        this.hCity = hCity;
        this.hXiangxi = hXiangxi;
        this.hJingdu = hJingdu;
        this.hWeidu = hWeidu;
    }

    public Hours() {
        super();
    }

    public String gethSid() {
        return hSid;
    }

    public void sethSid(String hSid) {
        this.hSid = hSid == null ? null : hSid.trim();
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName == null ? null : hName.trim();
    }

    public String gethShengfen() {
        return hShengfen;
    }

    public void sethShengfen(String hShengfen) {
        this.hShengfen = hShengfen == null ? null : hShengfen.trim();
    }

    public String gethCity() {
        return hCity;
    }

    public void sethCity(String hCity) {
        this.hCity = hCity == null ? null : hCity.trim();
    }

    public String gethXiangxi() {
        return hXiangxi;
    }

    public void sethXiangxi(String hXiangxi) {
        this.hXiangxi = hXiangxi == null ? null : hXiangxi.trim();
    }

    public String gethJingdu() {
        return hJingdu;
    }

    public void sethJingdu(String hJingdu) {
        this.hJingdu = hJingdu == null ? null : hJingdu.trim();
    }

    public String gethWeidu() {
        return hWeidu;
    }

    public void sethWeidu(String hWeidu) {
        this.hWeidu = hWeidu == null ? null : hWeidu.trim();
    }
}