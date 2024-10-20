using Godot;
using System;

public enum Stage {
	ELEM,
	HIGH,
	COLL,
	JOBI,
	MANG,
	DEAD
}

public partial class Game : Node

{
	private Stage currentStage; 
	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready(){
		currentStage = Stage.ELEM;
	}
}
