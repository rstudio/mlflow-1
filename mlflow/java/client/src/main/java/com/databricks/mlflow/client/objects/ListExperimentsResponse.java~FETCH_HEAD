package com.databricks.mlflow.client.objects;

import java.util.*;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ListExperimentsResponse{
    @JsonProperty("experiments")
    private List<Experiment> experiments = Collections.emptyList();
    public List<Experiment> getExperiments() { return experiments; }
    public void setExperiment(List<Experiment> experiments) { this.experiments= experiments; }
 
    @Override
    public String toString() {
        return
              "experiments=" + experiments
        ;
    }
}
