.class Lcom/google/appinventor/components/runtime/Spreadsheet$7;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->RemoveRow(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$rowNumber:I

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$sheetName:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$rowNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 888
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$sheetName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 891
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v1, "RemoveCol: sheetName not found"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 895
    :cond_0
    new-instance v2, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;

    invoke-direct {v2}, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;-><init>()V

    new-instance v3, Lcom/google/api/services/sheets/v4/model/DimensionRange;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;-><init>()V

    .line 898
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setSheetId(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v1

    const-string v3, "ROWS"

    .line 899
    invoke-virtual {v1, v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setDimension(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$rowNumber:I

    add-int/lit8 v3, v3, -0x1

    .line 900
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setStartIndex(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$rowNumber:I

    .line 901
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setEndIndex(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v1

    .line 896
    invoke-virtual {v2, v1}, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;->setRange(Lcom/google/api/services/sheets/v4/model/DimensionRange;)Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;

    move-result-object v1

    .line 903
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 904
    new-instance v3, Lcom/google/api/services/sheets/v4/model/Request;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/Request;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/api/services/sheets/v4/model/Request;->setDeleteDimension(Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;)Lcom/google/api/services/sheets/v4/model/Request;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v1, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;-><init>()V

    .line 906
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;->setRequests(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    move-result-object v1

    .line 907
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->batchUpdate(Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;->execute()Ljava/lang/Object;

    .line 910
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$7$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$7$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 919
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 920
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveRow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
