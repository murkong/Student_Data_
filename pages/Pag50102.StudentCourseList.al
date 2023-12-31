page 50102 "Student Course List"
{
    ApplicationArea = All;
    Caption = 'Student Course List';
    PageType = List;
    SourceTable = "Student Course";
    UsageCategory = Lists;
    CardPageId = "Student Course Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Reg. No"; Rec."Reg. No")
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field(Marks1; Rec.MarksStudent1)
                {
                    ApplicationArea = All;
                }
                field(Marks2; Rec.MarksStudent2)
                {
                    ApplicationArea = All;
                }
                field(AverageMarks; Rec.AvgMarks)
                {
                    ApplicationArea = All;
                }
                field(Grade; rec.Grade)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Reporting)
        {
            action("StudentCourse Report")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    report.Run(Report::"Students Course Report");
                end;
            }
        }
    }
}
