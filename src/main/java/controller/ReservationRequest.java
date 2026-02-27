package controller;

import java.util.List;

public class ReservationRequest {
    private List<Passenger> passengers;
    private Integer maitreIndex;

    public ReservationRequest() {
    }

    public List<Passenger> getPassengers() {
        return passengers;
    }

    public void setPassengers(List<Passenger> passengers) {
        this.passengers = passengers;
    }

    public Integer getMaitreIndex() {
        return maitreIndex;
    }

    public void setMaitreIndex(Integer maitreIndex) {
        this.maitreIndex = maitreIndex;
    }
}