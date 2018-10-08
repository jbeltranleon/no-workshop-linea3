/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author jhonf
 */
public class Empleado 
{
    private String nombre;
    private String apellido;
    private String cargo;
    private String salario;
    
    public Empleado(String nombre, String apellido, String cargo, String salario)
    {
        this.nombre = nombre;
        this.apellido = apellido;
        this.cargo = cargo;
        this.salario = salario;
    }
    
    public String getNombre()
    {
        return nombre;
    }
    
    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }
    
    public String getApellido()
    {
        return apellido;
    }
    
    public void setApellido(String apellido)
    {
        this.apellido = apellido;
    }
    
    public String getCargo()
    {
        return cargo;
    }
    
    public void setCargo(String cargo)
    {
        this.cargo = cargo;
    }
    
    public String getSalario()
    {
        return salario;
    }
    
    public void setSalario(String salario)
    {
        this.salario = salario;
    }
}
