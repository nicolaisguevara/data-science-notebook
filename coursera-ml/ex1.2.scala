package com.helio9cn.ml

import io.Source
import scala.Array.canBuildFrom

object Main {
  
  def h(x: Double, theta: Array[Double]) = theta(0) + theta(1) * x
  def pow(x: Double) = x * x

  // x: feature, size of m
  // y: label, size of n
  // theta: parameter, size of 2 for 1 and x
  // h() = theta(0) + theta(1) * x: hypothesis 
  def costFunction(X: Array[Double], Y: Array[Double], theta: Array[Double]) = {
    val m = X.length
    val sum = for (i <- 0 until m) yield pow(h(X(i), theta) - Y(i))
    sum.reduce(_ + _) / (2 * m)
  }
  
  def gradientDescent(X: Array[Double], Y: Array[Double], theta: Array[Double], alpha: Double) = {
    val m = X.length
    val n = theta.length
    val newTheta = new Array[Double](n)
    for (j <- 0 until n) newTheta(j) = {
      val sum = for (i <- 0 until m) yield (h(X(i), theta) - Y(i))*(if (j == 0) 1 else X(i))
      theta(j) - alpha * sum.reduce(_ + _) / m 
    }
    println(theta.mkString(",") + " => " + newTheta.mkString(","))
    newTheta
  }
  
  def test() {
  }
  
  def main(args: Array[String]) {
    test()
    val source = Source.fromFile("D:\\ex1data1.txt")
    val lines = source.getLines.toArray
    val X = lines.map(x => x.split(",")(0).toDouble)
    val Y = lines.map(x => x.split(",")(1).toDouble)
    var theta = Array(0.0, 0.0)
    val alpha = 0.01
    println(costFunction(X, Y, theta))
    for (i <- 1 to 1500) {
      theta = gradientDescent(X, Y, theta, alpha)
      println(costFunction(X, Y, theta))
    }
  }
}
