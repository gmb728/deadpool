//
//  ViewController.swift
//  Qna
//
//  Created by SHIH-YING PAN on 2018/5/15.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var gradeView: UIView!
    var questions = [Question]()
    var questionNumber = 0
    var grade = 0
    @IBOutlet var choicesLabel: [UILabel]!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var newQuestionLabel: UIButton!
    @IBAction func newQuestionLabel(_ sender: UIButton) {
        gradeView.isHidden = true
        questionNumber = 0
        grade = 0
        let question = questions[0]
        questionLabel.text = question.description
        var i = 0
        for label in choicesLabel{
            label.text = question.choices[i]
            print(i,question.choices[i])
            i  =  i  +  1
        }
    }
    

   
   
    @IBAction func buttonPress(_ sender: UIButton) {
    let question = questions[questionNumber]
        let number = sender.tag
        if question.choices[number] == question.answer {
            grade = grade + 10
        }
        questionNumber = questionNumber + 1
        print(questionNumber)
        if questionNumber == questions.count {
            gradeView.isHidden = false
            gradeLabel.text = "\(grade)"
        } else {
            let newQuestion = questions[questionNumber]
            questionLabel.text = newQuestion.description
            var i = 0
            for label in choicesLabel{
                label.text = newQuestion.choices[i]
                i = i + 1
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradeView.isHidden = true
        questions.append(Question(description: "片頭死侍拿著羅根（金鋼狼的本名）被木頭貫穿身體的音樂盒，提到《羅根》學他走什麼級（美國電影分級制度）路線", answer: "R級", choices: ["C級", "PG級", "R級"]))
        questions.append(Question(description: "在跟女友解釋遲到原因時說，他救了一群穿披風的小孩，他們的媽媽名字剛好都是？", answer: "瑪莎", choices: ["瑪莎", "瑪莉", "瑪莉蓮"]))
        questions.append(Question(description: "阿杜一直提到《夜訪吸血鬼》被湯姆克魯斯吸血的小女孩是誰？", answer: "蜘蛛人的女友", choices: ["黑寡婦", "蜘蛛人的女友", "鋼鐵人的小辣椒"]))
        questions.append(Question(description: "死侍亂補腦星際大戰的內容，說路克跟他妹近親性交，凡妮莎反駁說他們沒有性交，還指正死侍說的內容應該是哪部星際大戰？", answer: "帝國大反擊", choices: ["曙光乍現", "帝國大反擊", "絕地大反攻"]))
        questions.append(Question(description: "死侍提到《楊朵》（Yentl, 1983），片中女主角唱的歌是《Papa Can you Hear Me?》？旋律跟哪部迪士尼動畫裡的歌曲旋律很像", answer: "《冰雪奇緣》", choices: ["《冰雪奇緣》", "《愛麗絲夢遊仙境》", "《小美人魚》"]))
        questions.append(Question(description: "死侍炸自己之後那段影片，刀叉圍成圈圈很明顯是在致敬「007系列電影」，落水的劇情則是致敬哪部007電影？", answer: "007：空降危機》", choices: ["《007：縱橫天下》", "《誰與爭鋒》", "《007：空降危機》"]))
        questions.append(Question(description: "死侍用彈殼淋浴，是在惡搞哪部經典電影畫面？", answer: "《閃舞》", choices: ["《閃舞》", "《熱力十七》", "《舞力重擊》"]))
        questions.append(Question(description: "死侍來到X學校時提到『怎麼都不找其他有名的角色』，抱怨的理由是?", answer: "片商沒錢", choices: ["大牌太忙", "片商沒錢", "其他X戰警不想理死侍"]))
        questions.append(Question(description: "死侍在玩的輪椅是X教授的，腦波增幅器也是X教授的, 請問年長版的X教授是由誰飾演?", answer: "派屈克史都華", choices: ["詹姆斯麥艾維", "史丹李", "派屈克史都華"]))
        questions.append(Question(description: "死侍說雪緒是『彩紅小馬裡頭的碧琪派/Pinkie Pie』請問是哪隻顏色的彩紅小馬？", answer: "粉紅色", choices: ["紫色", "黃色", "粉紅色"]))
        questions.append(Question(description: "機堡用槍掃射死侍，死侍揮舞雙刀看似把所有子彈擋下來，結果是全身中槍，這邊是模仿哪部電影？", answer: "《X戰警：金鋼狼》", choices: ["《X戰警：金鋼狼》", "《X戰警：天啟》", "《羅根》"]))
        questions.append(Question(description: "死侍遇到機堡時，為什麼說他很黑暗（so dark）？", answer: "因為他來自DC拓展宇宙", choices: ["因為他是薩諾斯", "因為他來自DC", "因為他心很黑"]))
        questions.append(Question(description: "死侍為什麼說機堡是『酷寒戰士的學長』？", answer: "因為他有機械手臂", choices: ["因為他認識美國隊長", "因為他來自漫威", "因為他有機械手臂"]))
        questions.append(Question(description: "死侍下半身重生時為什麼說小熊維尼（Winnie the Pooh）也是這樣？", answer: "因為只有穿上衣沒有穿褲子愛", choices: ["因為很天真可愛", "因為在中國被河蟹", "因為只有上衣沒褲子"]))
        questions.append(Question(description: "死侍在寒冰堡說自己變成廢人，只剩下超強的癌細胞，再給他一把弓箭就變成？", answer: "鷹眼", choices: ["鷹眼", "勒苟拉斯", "羅賓漢"]))
        questions.append(Question(description: "多米諾在interview成為X-force成員靠的是？", answer: "好運", choices: ["槍法", "身材", "好運"]))
        questions.append(Question(description: "死侍把毒品拍在自己身上的灑粉動作，可能是在模仿NBA哪個當紅球星灑鎂粉的開場動？", answer: "詹姆士大帝", choices: ["詹姆士大帝", "咖哩小子柯瑞", "空中飛人喬丹"]))
        questions.append(Question(description: "黃鼠狼說機堡是哪部越時空劇的丈夫？", answer: "時空旅人之妻", choices: ["《穿越時空愛上你》", "《時空旅人之妻》", "《命運好好玩》"]))
        questions.append(Question(description: "死侍虧機堡全身的造型很像？", answer: "《魔鬼終結者》", choices: ["《魔鬼終結者》", "《阿凡達》", "校園恐攻的Android"]))
        
        questions.append(Question(description: "死侍在計程車上跟阿杜提到自己可以比擬耶穌，因R級《死侍》在美國國內的票房僅輸給？", answer: "《受難記：最後的激情》", choices: ["《醉後大丈夫》", "《駭客任務：重裝上陣》", "《受難記：最後的激情》"]))
        questions.append(Question(description: "消影人(Vanisher)在被電線桿電到時有短暫秀出是哪個演員？", answer: "史密斯先生", choices: ["史密斯先生", "雷神索爾", "福爾摩沙的華生"]))
        
        let question = questions[0]
        questionLabel.text = question.description
        var i = 0
        for label in choicesLabel{
            label.text = question.choices[i]
            print(i,question.choices[i])
            i  =  i  +  1
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

