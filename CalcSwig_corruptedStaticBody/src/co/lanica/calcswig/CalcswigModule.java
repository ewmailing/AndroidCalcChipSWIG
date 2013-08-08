/**
 * This file was auto-generated by the Titanium Module SDK helper for Android
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 *
 */
package co.lanica.calcswig;

import org.appcelerator.kroll.KrollModule;
import org.appcelerator.kroll.annotations.Kroll;

import org.appcelerator.titanium.TiApplication;
import org.appcelerator.kroll.common.Log;

@Kroll.module(name="Calcswig", id="co.lanica.calcswig")
public class CalcswigModule extends KrollModule
{

	// Standard Debugging variables
	private static final String TAG = "CalcswigModule";
	private static	String[] stringArray = {"Hello", "World"};

	// You can define constants with @Kroll.constant, for example:
	// @Kroll.constant public static final String EXTERNAL_NAME = value;
	
	private static native void initializeSwig();
	
	public CalcswigModule()
	{
		
		super();
		Log.d(TAG, "CalcswigModule constructor");
		System.loadLibrary("chipmunk");
		System.loadLibrary("CalcSwig");
		//System.loadLibrary("co.lanica.calcswig");

		initializeSwig();
	
	}

	@Kroll.onAppCreate
	public static void onAppCreate(TiApplication app)
	{
		Log.d(TAG, "inside onAppCreate");
		// put module init code that needs to run when the application is created

//		initializeSwig();
	}

/*
	// Methods
	@Kroll.method
	public String example()
	{
		Log.d(TAG, "example called");
		return "hello world";
	}
	
	// Properties
	@Kroll.getProperty
	public String getExampleProp()
	{
		Log.d(TAG, "get example property");
		return "hello world";
	}
	
	
	@Kroll.setProperty
	public void setExampleProp(String value) {
		Log.d(TAG, "set example property: " + value);
	}



	@Kroll.method
	public void emptyCall()
	{
		// for benchmarking
	}

	@Kroll.method
	public double returnDouble()
	{
		// for benchmarking
		return 1234.5;
	}

	@Kroll.method
	public String returnString()
	{
		// for benchmarking
		return "Hello World";
	}



	@Kroll.method
	public void passString(String string)
	{
	}

	@Kroll.method
	public void passDouble(double value)
	{
	}

	@Kroll.method
	public double passAndReturnDouble(double value)
	{
		return value;
	}

	@Kroll.method
	public String passAndReturnString(String string)
	{
		return string;
	}


	@Kroll.method
	public void pass2Double(double value, double val2)
	{
	}

	@Kroll.method
	public void pass2String(String value, String val2)
	{
	}

	@Kroll.method
	public double[] returnDoubleArray2()
	{
	 	double[] array = {1, 2};
		return array;
	}
	@Kroll.method
	public String[] returnStringArray2()
	{
		return stringArray;
	}


	
	@Kroll.getProperty
	public double getPropDoub()
	{
		// for benchmarking
		return 1234.5;
	}
	@Kroll.setProperty
	public void setPropDoub(double value)
	{
	}

	@Kroll.getProperty
	public String getPropStr()
	{
		// for benchmarking
		return "Hello World";
	}
	@Kroll.setProperty
	public void setPropStr(String string)
	{
	}
*/


}
