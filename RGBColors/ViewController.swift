import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLabel: UISlider!
    @IBOutlet weak var greenLabel: UISlider!
    @IBOutlet weak var blueLabel: UISlider!
    @IBOutlet weak var alphaLabel: UISlider!
    @IBOutlet weak var bg: UIView!
    @IBOutlet weak var redTxt: UILabel!
    @IBOutlet weak var greenTxt: UILabel!
    @IBOutlet weak var blueTxt: UILabel!
    @IBOutlet weak var alphaTxt: UILabel!
    @IBOutlet weak var redNum: UILabel!
    @IBOutlet weak var greenNum: UILabel!
    @IBOutlet weak var blueNum: UILabel!
    @IBOutlet weak var alphaNum: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
    var redValue: Float = 0
    var greenValue: Float = 0
    var blueValue: Float = 0
    var alphaValue: Float = 0
    
    @IBAction func colorChange(_ sender: UISlider){
        if sender.tag == 1 {
            redValue = sender.value
        } else if sender.tag == 2 {
            greenValue = sender.value
        } else if sender.tag == 3 {
            blueValue = sender.value
        } else if sender.tag == 4 {
            alphaValue = sender.value
        }
        
        bg.backgroundColor = UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat( blueValue/255), alpha: CGFloat( alphaValue/255))
        
        redTxt.text = "\(Int(redValue))"
        greenTxt.text = "\(Int(greenValue))"
        blueTxt.text = "\(Int(blueValue))"
        alphaTxt.text = "\(Int(alphaValue))"
        
        textColor()
    }
    
    @IBAction func resetColors(_ sender: UIButton){
            if sender == resetBtn {
                redValue = 0
                greenValue = 0
                blueValue = 0
                alphaValue = 0
                
                redLabel.value = redValue
                greenLabel.value = greenValue
                blueLabel.value = blueValue
                alphaLabel.value = alphaValue
                
                bg.backgroundColor = UIColor.black
                
                redTxt.text = "\(Int(redValue))"
                greenTxt.text = "\(Int(greenValue))"
                blueTxt.text = "\(Int(blueValue))"
                alphaTxt.text = "\(Int(alphaValue))"
                
                textColor()
            }
        }
    
    func textColor(){
        if (redValue >= 210 && greenValue >= 210 && blueValue >= 0) && alphaValue >= 210 {
            redTxt.textColor = UIColor.black
            redNum.textColor = UIColor.black
            blueTxt.textColor = UIColor.black
            blueNum.textColor = UIColor.black
            greenTxt.textColor = UIColor.black
            greenNum.textColor = UIColor.black
            alphaTxt.textColor = UIColor.black
            alphaNum.textColor = UIColor.black
        }else{
            redTxt.textColor = UIColor.white
            redNum.textColor = UIColor.white
            blueTxt.textColor = UIColor.white
            blueNum.textColor = UIColor.white
            greenTxt.textColor = UIColor.white
            greenNum.textColor = UIColor.white
            alphaTxt.textColor = UIColor.white
            alphaNum.textColor = UIColor.white
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

