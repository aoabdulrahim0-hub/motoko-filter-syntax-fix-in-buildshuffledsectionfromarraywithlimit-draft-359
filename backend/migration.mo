import Map "mo:core/Map";
import List "mo:core/List";
import Nat "mo:core/Nat";
import Principal "mo:core/Principal";

module {
  type Gender = { #male; #female; #other };
  type WeightUnit = { #kg; #lb };
  type TrainingFrequency = { #threeDays; #fourDays; #fiveDays };

  type Exercise = {
    name : Text;
    primaryMuscleGroup : Text;
    equipmentType : Text;
    demoUrl : Text;
    recoveryTime : Int;
  };

  type WorkoutExercise = {
    exercise : Exercise;
    sets : Nat;
    reps : Nat;
    suggestedWeight : Float;
    setData : [SetData];
  };

  type Workout = {
    exercises : [WorkoutExercise];
    timestamp : Int;
    totalVolume : Float;
  };

  type UserProfile = {
    gender : Gender;
    bodyweight : Float;
    weightUnit : WeightUnit;
    trainingFrequency : TrainingFrequency;
    darkMode : Bool;
    restTime : Int;
    muscleGroupRestInterval : Int;
  };

  type SetData = {
    weight : Float;
    reps : Nat;
  };

  public func run(old : { workoutHistory : Map.Map<Principal, List.List<Workout>>; userProfiles : Map.Map<Principal, UserProfile> }) : {
    workoutHistory : Map.Map<Principal, List.List<Workout>>;
    userProfiles : Map.Map<Principal, UserProfile>;
  } {
    old;
  };
};
