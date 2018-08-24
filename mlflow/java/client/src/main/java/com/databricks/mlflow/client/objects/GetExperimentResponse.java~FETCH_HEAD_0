package com.databricks.mlflow.client.objects;

import java.util.*;
import com.fasterxml.jackson.annotation.JsonProperty;

public class GetExperimentResponse {
    @JsonProperty("experiment")
    private Experiment experiment; 
    public Experiment getExperiment() { return experiment; }
    public void setExperiment(Experiment experiment) { this.experiment= experiment; }

    private List<RunInfo> runs = Collections.emptyList();
    @JsonProperty("runs")
    public List<RunInfo> getRuns() { return runs; }
    public void setRuns(List<RunInfo> runs) { this.runs = runs; }
 
    @Override
    public String toString() {
        return
              "experiment=" + experiment
        ;
    }
}
