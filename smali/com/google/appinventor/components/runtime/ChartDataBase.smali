.class public abstract Lcom/google/appinventor/components/runtime/ChartDataBase;
.super Lcom/google/appinventor/components/runtime/DataCollection;
.source "ChartDataBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ChartComponent;
.implements Lcom/github/mikephil/charting/listener/OnChartGestureListener;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/DataCollection<",
        "Lcom/google/appinventor/components/runtime/Chart;",
        "Lcom/google/appinventor/components/runtime/ChartDataModel<",
        "*****>;>;",
        "Lcom/google/appinventor/components/runtime/ChartComponent;",
        "Lcom/github/mikephil/charting/listener/OnChartGestureListener;",
        "Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;"
    }
.end annotation


# instance fields
.field private color:I

.field private colors:Lcom/google/appinventor/components/runtime/util/YailList;

.field private label:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 53
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Chart;->addDataComponent(Lcom/google/appinventor/components/runtime/ChartComponent;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->initChartData()V

    const/high16 p1, -0x1000000

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Color(I)V

    const-string p1, ""

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase;->DataSourceKey(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Label(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Color()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 87
    iget v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    return v0
.end method

.method public Color(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 99
    iput p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    .line 100
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast p1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setColor(I)V

    .line 101
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataChange()V

    return-void
.end method

.method public Colors()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->colors:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Colors(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 133
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 135
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    const-wide v6, -0x100000000L

    add-long/2addr v4, v6

    :cond_0
    long-to-int v4, v4

    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 147
    :catch_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v4, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v5, Lcom/google/appinventor/components/runtime/Component;

    const/16 v6, 0x1008

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    const-string v3, "Colors"

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->colors:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 159
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast p1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setColors(Ljava/util/List;)V

    .line 160
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataChange()V

    return-void
.end method

.method public EntryClick(Ljava/lang/Object;D)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 311
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "EntryClick"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v0, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Chart;->EntryClick(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/Object;D)V

    return-void
.end method

.method public Label()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->label:Ljava/lang/String;

    return-object v0
.end method

.method public Label(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->label:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setLabel(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataChange()V

    return-void
.end method

.method public LineType(Lcom/google/appinventor/components/common/LineType;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "chart_line_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->setLineType(Lcom/google/appinventor/components/common/LineType;)V

    :cond_0
    return-void
.end method

.method public PointShape(Lcom/google/appinventor/components/common/PointStyle;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "chart_point_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->setPointShape(Lcom/google/appinventor/components/common/PointStyle;)V

    :cond_0
    return-void
.end method

.method public initChartData()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v0, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    return-void
.end method

.method public onChartDoubleTapped(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onChartFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public onChartGestureEnd(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .locals 0

    return-void
.end method

.method public onChartGestureStart(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .locals 0

    return-void
.end method

.method public onChartLongPressed(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onChartScale(Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public onChartSingleTapped(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onChartTranslate(Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public onDataChange()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v0, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->getChartView()Lcom/google/appinventor/components/runtime/ChartView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartView;->refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;)V

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    const/4 v2, 0x0

    .line 242
    invoke-interface {v1, p0, v2, v2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNothingSelected()V
    .locals 0

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1

    .line 290
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast p2, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/ChartDataBase$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase$1;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/github/mikephil/charting/data/Entry;)V

    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
