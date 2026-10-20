
using System;

class Spacecraft
{
    public virtual void Launch()
    {
        Console.WriteLine("Spacecraft is launching");
    }

    public void Status()
    {
        Console.WriteLine("General spacecraft status");
    }
}

class MarsRover : Spacecraft
{
    public override void Launch()
    {
        Console.WriteLine("Mars rover is launching");
    }

    public new void Status()
    {
        Console.WriteLine("Mars rover is ready for exploration");
    }
}

class Program
{
    static void Main()
    {
        Spacecraft spacecraft = new MarsRover();
        MarsRover rover = new MarsRover();

        spacecraft.Launch();
        spacecraft.Status();
        rover.Status();
    }
}
