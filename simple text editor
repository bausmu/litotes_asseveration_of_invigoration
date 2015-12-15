package ergasia;

/**
 *
 * @author exetaseis
 */

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.io.*;

class MyEditorLast extends JFrame{
   Container cp;
   JMenuBar menuBar;
   JMenu Open,Save;

   MenuItemHandler handler;
   JTextField text1;

   JFileChooser chooser;
   File file;
FileReader input;
FileWriter output;
BufferedReader reader;


 GridLayout gl;
 JPanel pl1,pl2;
 JTextField tf,tf1;
 JTextArea tf2;
 JTextArea textArea;


   /**
    * @param args the command line arguments
    */
  public static void main (String[] args)
   {
   MyEditorLast app1  = new MyEditorLast();
   app1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

   app1.setSize(400,500);
   app1.setLocation(200, 200);
   app1.setResizable(false);
   app1.setVisible(true);

   }

   public MyEditorLast()
   {
     super("ΚΕΙΜΕΝΟΓΡΑΦΟΣ");
     handler=new MenuItemHandler();

     menuBar=new JMenuBar();


     Open=new JMenu("Open");
     Open.setMnemonic('O');
     Open.addActionListener(handler);
     menuBar.add(Open);


     Save=new JMenu("Save");
     Save.addActionListener(handler);
     Save.setMnemonic('S');
     menuBar.add(Save);

     chooser = new JFileChooser();


     pl1=new JPanel();

     setJMenuBar(menuBar);

     tf=new JTextField("",15);
     tf1=new JTextField("",15);
     pl1.add(tf);
     pl1.add(tf1);

     pl2=new JPanel();
     tf2=new JTextArea(10, 20);
     tf2.setEditable(false);
     pl2.add(tf2);

     cp=getContentPane();
   gl=new GridLayout(4,1);
   cp.setLayout(gl);

   cp.add(pl1);
   cp.add(pl2);


   }

   class MenuItemHandler implements ActionListener  {
      public void actionPerformed(ActionEvent e){
       if (e.getSource()==Open)
         {int result=chooser.showOpenDialog(null);
          String s=chooser.getSelectedFile().getPath();
       JOptionPane.showMessageDialog(null, "Choose:" +
s,"Results",JOptionPane.INFORMATION_MESSAGE);
       try{
           file=new File(s);
           input=new FileReader(file);
       reader=new BufferedReader(input);
       //output=new FileWriter(file);
       String line;
       line=reader.readLine();
       while(line !=null){
           System.out.println(line);
           line=reader.readLine();
       }
     reader.close();
       //output.close();
        }

      catch(Exception exc) {
          System.out.println("ERROR");
      }
     // finally {

     // }
        }
       else if (e.getSource()==Save)
       { int result=chooser.showSaveDialog(null);
        String s=chooser.getSelectedFile().getPath();
       JOptionPane.showMessageDialog(null, "Choose:" +
s,"Results",JOptionPane.INFORMATION_MESSAGE);

        try{
           file=new File(s);
           output=new FileWriter(file);
      String ta=textArea.getText();
       output.write(ta);
        output.close();

        }
      catch(Exception exc) {
          System.out.println("ERROR");
      }

          String cmd=e.getActionCommand();
          text1.setText(cmd);
        }
      }
    }
  }
