using Godot;
using System;

public partial class ProgressBarUI : Node
{
	private float progress;
	private float max;
	private ColorRect progressBar;
	
	private Color r;
	private Color g;
	
	public override void _Ready() {
		progressBar = GetNode<ColorRect>("progressBar");
		max = GetNode<ColorRect>("background").GetSize()[0];
		progress = 0f;
		r = progressBar.GetColor();
		g = GetNode<ColorRect>("cutoffBar").GetColor();
	}
	
	public void addProgress(float percent){		
		if (progress+percent > 100.0f){
			progress = 100.0f;
		} else {
			progress += percent;
		}
		
		if (progress >= 70.0f){
			progressBar.SetColor(g);
		}

		progressBar.SetSize(new Vector2((progress/100.0f)*max, progressBar.GetSize()[1]));
	}
	
	public float getProgress(){
		return this.progress;
	}
	
	public void resetProgress(){
		progress = 0.0f;
		progressBar.SetColor(r);
		progressBar.SetSize(new Vector2(0, progressBar.GetSize()[1]));
	}
}
