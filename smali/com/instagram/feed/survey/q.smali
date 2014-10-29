.class public final Lcom/instagram/feed/survey/q;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Lcom/instagram/feed/survey/i;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:J

.field private final c:Lcom/instagram/feed/g/a;

.field private final d:Lcom/instagram/feed/survey/m;

.field private final e:Landroid/app/Activity;

.field private f:Lcom/instagram/feed/survey/j;

.field private g:Lcom/instagram/feed/survey/MultiQuestionSurvey;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/Dialog;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/content/DialogInterface$OnClickListener;

.field private l:Z

.field private m:I

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/instagram/feed/g/a;Lcom/instagram/feed/survey/m;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/instagram/feed/survey/q;->n:Z

    .line 85
    iput v2, p0, Lcom/instagram/feed/survey/q;->o:I

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/feed/survey/q;->b:J

    .line 90
    new-instance v0, Lcom/instagram/feed/survey/ai;

    invoke-direct {v0, p0, v2}, Lcom/instagram/feed/survey/ai;-><init>(Lcom/instagram/feed/survey/q;B)V

    iput-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lcom/instagram/feed/survey/q;->c:Lcom/instagram/feed/g/a;

    .line 93
    iput-object p3, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lcom/instagram/feed/survey/q;->b(Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->j:Landroid/widget/TextView;

    sget v1, Lcom/facebook/av;->button_multi_select_next:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->survey_dialog_next:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    new-instance v1, Lcom/instagram/feed/survey/ag;

    invoke-direct {v1, p0, p2, p1}, Lcom/instagram/feed/survey/ag;-><init>(Lcom/instagram/feed/survey/q;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method

.method private a(Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 225
    sget v0, Lcom/facebook/av;->resultsList:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 227
    sget v1, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/az;->survey_dialog_survey_results:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    sget v1, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/feed/survey/af;

    invoke-direct {v2, p0, p1}, Lcom/instagram/feed/survey/af;-><init>(Lcom/instagram/feed/survey/q;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    invoke-virtual {p2}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    .line 241
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->survey_result_row:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 243
    sget v1, Lcom/facebook/av;->question_header:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 244
    invoke-virtual {v3}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    sget v1, Lcom/facebook/av;->answerList:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 249
    invoke-virtual {v3}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    .line 250
    new-instance v7, Lcom/instagram/feed/survey/p;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/instagram/feed/survey/p;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v7, v2}, Lcom/instagram/feed/survey/p;->setAnswer(Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;)V

    .line 252
    invoke-virtual {v3}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/instagram/feed/survey/p;->setTotalQuestionResponders(I)V

    .line 253
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 256
    :cond_0
    sget v1, Lcom/facebook/av;->question_footer:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 257
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/facebook/ax;->x_survey_question_responders:I

    invoke-virtual {v3}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d()I

    move-result v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 265
    :cond_1
    return-void
.end method

.method private a(Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    sget v0, Lcom/facebook/av;->multiQuestionSurveyList:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 523
    sget v1, Lcom/facebook/av;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 525
    invoke-virtual {p2}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    .line 526
    invoke-virtual {v2}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    new-instance v1, Lcom/instagram/feed/survey/e;

    iget-object v3, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    invoke-direct {v1, v3, v2}, Lcom/instagram/feed/survey/e;-><init>(Landroid/content/Context;Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 530
    invoke-virtual {v2}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/instagram/feed/survey/q;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 536
    :goto_0
    invoke-virtual {p2}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->d()I

    move-result v0

    sget v1, Lcom/instagram/feed/survey/aj;->a:I

    if-ne v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->c:Lcom/instagram/feed/g/a;

    invoke-static {p2, v0}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey;Lcom/instagram/common/analytics/g;)V

    .line 539
    :cond_0
    return-void

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/instagram/feed/survey/q;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private a(Landroid/app/Dialog;Lcom/instagram/feed/survey/j;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 377
    sget v0, Lcom/facebook/av;->surveySwitcher:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 378
    sget v1, Lcom/facebook/av;->surveyList:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 380
    iget-object v2, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    sget v3, Lcom/facebook/aw;->sentiment_tool_question:I

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 384
    sget v3, Lcom/facebook/av;->title:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 385
    sget v4, Lcom/facebook/av;->subtitle:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 386
    invoke-virtual {p2}, Lcom/instagram/feed/survey/j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {p2}, Lcom/instagram/feed/survey/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p2}, Lcom/instagram/feed/survey/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 390
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 394
    new-instance v2, Lcom/instagram/feed/survey/l;

    iget-object v3, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    invoke-direct {v2, v3, p2}, Lcom/instagram/feed/survey/l;-><init>(Landroid/content/Context;Lcom/instagram/feed/survey/j;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 395
    new-instance v2, Lcom/instagram/feed/survey/w;

    invoke-direct {v2, p0, v0, p2}, Lcom/instagram/feed/survey/w;-><init>(Lcom/instagram/feed/survey/q;Landroid/widget/ViewSwitcher;Lcom/instagram/feed/survey/j;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 411
    new-instance v0, Lcom/instagram/feed/survey/x;

    invoke-direct {v0, p0, p2}, Lcom/instagram/feed/survey/x;-><init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/j;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 422
    return-void
.end method

.method private a(Lcom/instagram/feed/survey/MultiQuestionSurvey;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 496
    invoke-virtual {p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/instagram/feed/survey/q;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    .line 498
    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->e()V

    .line 499
    iget-object v1, p0, Lcom/instagram/feed/survey/q;->c:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0, p2, v1}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey;Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;[Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    .line 501
    iget v0, p0, Lcom/instagram/feed/survey/q;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/feed/survey/q;->o:I

    .line 502
    invoke-virtual {p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 505
    iget v1, p0, Lcom/instagram/feed/survey/q;->o:I

    if-le v1, v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/app/Dialog;)V

    .line 508
    invoke-virtual {p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    invoke-static {v0, v2}, Lcom/instagram/ui/dialog/a;->a(Landroid/app/Dialog;Z)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->surveyFlipper:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 515
    iput v2, p0, Lcom/instagram/feed/survey/q;->o:I

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    iget v1, p0, Lcom/instagram/feed/survey/q;->o:I

    invoke-direct {p0, v0, p1, v1}, Lcom/instagram/feed/survey/q;->a(Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/feed/survey/q;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->c()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/survey/q;Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/survey/q;->a(Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/survey/q;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/instagram/feed/survey/q;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/feed/survey/q;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private static b(Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 486
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    .line 488
    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 492
    :cond_1
    return-object v2
.end method

.method private b(Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 425
    sget v0, Lcom/facebook/av;->multiQuestionSurveyList:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 427
    iget-object v1, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    sget v2, Lcom/facebook/aw;->sentiment_tool_multiple_question:I

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 430
    iget-object v2, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    sget v3, Lcom/facebook/aw;->list_view_footer:I

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/instagram/feed/survey/q;->j:Landroid/widget/TextView;

    .line 432
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 434
    new-instance v1, Lcom/instagram/feed/survey/y;

    invoke-direct {v1, p0}, Lcom/instagram/feed/survey/y;-><init>(Lcom/instagram/feed/survey/q;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 445
    iget v1, p0, Lcom/instagram/feed/survey/q;->o:I

    invoke-direct {p0, p1, p2, v1}, Lcom/instagram/feed/survey/q;->a(Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;I)V

    .line 447
    new-instance v1, Lcom/instagram/feed/survey/z;

    invoke-direct {v1, p0, p2}, Lcom/instagram/feed/survey/z;-><init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/instagram/feed/survey/q;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcom/instagram/feed/survey/q;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    .line 482
    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 271
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    .line 272
    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->d()V

    .line 270
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 276
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/instagram/feed/survey/q;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/instagram/feed/survey/q;->o:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    .line 298
    iput-object v0, p0, Lcom/instagram/feed/survey/q;->i:Landroid/app/Dialog;

    .line 299
    iput-object v0, p0, Lcom/instagram/feed/survey/q;->f:Lcom/instagram/feed/survey/j;

    .line 300
    iput-object v0, p0, Lcom/instagram/feed/survey/q;->g:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    .line 301
    iput-boolean v1, p0, Lcom/instagram/feed/survey/q;->n:Z

    .line 302
    iput-object v0, p0, Lcom/instagram/feed/survey/q;->j:Landroid/widget/TextView;

    .line 304
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    invoke-interface {v0, p0}, Lcom/instagram/feed/survey/m;->b(Lcom/instagram/feed/survey/i;)V

    .line 311
    :cond_0
    return-void
.end method

.method private c(Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 3
    .parameter

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->e()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->b()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->survey_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->survey_dialog_next:I

    new-instance v2, Lcom/instagram/feed/survey/t;

    invoke-direct {v2, p0, p1}, Lcom/instagram/feed/survey/t;-><init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/survey/q;->i:Landroid/app/Dialog;

    .line 359
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->i:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/feed/survey/u;

    invoke-direct {v1, p0, p1}, Lcom/instagram/feed/survey/u;-><init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 367
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->i:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/feed/survey/v;

    invoke-direct {v1, p0}, Lcom/instagram/feed/survey/v;-><init>(Lcom/instagram/feed/survey/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 373
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 374
    return-void
.end method

.method private c(Lcom/instagram/feed/survey/j;)V
    .locals 3
    .parameter

    .prologue
    .line 314
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->survey_help_improve_instagram_message:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->b()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->survey_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->survey_dialog_next:I

    new-instance v2, Lcom/instagram/feed/survey/ah;

    invoke-direct {v2, p0, p1}, Lcom/instagram/feed/survey/ah;-><init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/instagram/feed/survey/s;

    invoke-direct {v1, p0, p1}, Lcom/instagram/feed/survey/s;-><init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/j;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 338
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 339
    return-void
.end method

.method static synthetic d(Lcom/instagram/feed/survey/q;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 564
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    iget v0, p0, Lcom/instagram/feed/survey/q;->m:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/feed/survey/q;->l:Z

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 568
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/g/a;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->c:Lcom/instagram/feed/g/a;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 571
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    iget v0, p0, Lcom/instagram/feed/survey/q;->m:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/feed/survey/q;->l:Z

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 575
    :cond_0
    return-void
.end method

.method private f()I
    .locals 8

    .prologue
    .line 599
    const-wide/16 v0, 0x7d0

    const-wide/16 v2, 0x3a98

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/instagram/feed/survey/q;->b:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static synthetic f(Lcom/instagram/feed/survey/q;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    invoke-interface {v0}, Lcom/instagram/feed/survey/m;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/instagram/feed/survey/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/instagram/feed/survey/q;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/instagram/feed/survey/q;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/instagram/feed/survey/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/survey/j;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->f:Lcom/instagram/feed/survey/j;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/feed/survey/q;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->d()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/survey/MultiQuestionSurvey;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->g:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    return-object v0
.end method

.method static synthetic m(Lcom/instagram/feed/survey/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/feed/survey/q;->n:Z

    return v0
.end method

.method static synthetic n(Lcom/instagram/feed/survey/q;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->i:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/feed/survey/q;->l:Z

    .line 579
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->f:Lcom/instagram/feed/survey/j;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->f:Lcom/instagram/feed/survey/j;

    invoke-virtual {p0, v0}, Lcom/instagram/feed/survey/q;->b(Lcom/instagram/feed/survey/j;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->g:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->g:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-virtual {p0, v0}, Lcom/instagram/feed/survey/q;->b(Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lcom/instagram/feed/survey/q;->b(I)V

    .line 606
    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->d()V

    .line 607
    return-void
.end method

.method public final a(Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 134
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->d()I

    move-result v0

    sget v1, Lcom/instagram/feed/survey/aj;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/instagram/feed/survey/q;->c:Lcom/instagram/feed/g/a;

    invoke-interface {v0}, Lcom/instagram/feed/g/a;->p_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->c()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v0, Lcom/instagram/feed/survey/aa;

    invoke-direct {v0, p0}, Lcom/instagram/feed/survey/aa;-><init>(Lcom/instagram/feed/survey/q;)V

    .line 150
    new-instance v1, Lcom/instagram/feed/survey/ab;

    invoke-direct {v1, p0, p1}, Lcom/instagram/feed/survey/ab;-><init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    .line 164
    new-instance v2, Lcom/instagram/feed/survey/ac;

    invoke-direct {v2, p0, p1}, Lcom/instagram/feed/survey/ac;-><init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    iput-object v2, p0, Lcom/instagram/feed/survey/q;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 179
    invoke-virtual {p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    new-instance v2, Lcom/instagram/ui/dialog/b;

    iget-object v3, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    sget v4, Lcom/facebook/aw;->sentiment_tool_dialog_multi_question:I

    sget v5, Lcom/facebook/ba;->IgDialog:I

    invoke-direct {v2, v3, v4, v5}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2, v6}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v2

    sget v3, Lcom/facebook/az;->survey_dialog_title:I

    invoke-virtual {v2, v3}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v2

    sget v3, Lcom/facebook/az;->survey_dialog_done:I

    invoke-virtual {v2, v3, v0}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->survey_dialog_view_results:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    invoke-direct {p0, v0, p1}, Lcom/instagram/feed/survey/q;->b(Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    .line 209
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/feed/survey/ae;

    invoke-direct {v1, p0}, Lcom/instagram/feed/survey/ae;-><init>(Lcom/instagram/feed/survey/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    invoke-virtual {p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 217
    invoke-direct {p0, p1}, Lcom/instagram/feed/survey/q;->c(Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    goto :goto_0

    .line 190
    :cond_2
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    sget v2, Lcom/facebook/aw;->sentiment_tool_dialog_multi_question:I

    sget v3, Lcom/facebook/ba;->IgDialog:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v6}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->survey_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->survey_dialog_done_blue:I

    new-instance v2, Lcom/instagram/feed/survey/ad;

    invoke-direct {v2, p0}, Lcom/instagram/feed/survey/ad;-><init>(Lcom/instagram/feed/survey/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    .line 205
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    invoke-static {v0, v6}, Lcom/instagram/ui/dialog/a;->a(Landroid/app/Dialog;Z)V

    goto :goto_1

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/instagram/feed/survey/j;)V
    .locals 4
    .parameter

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/instagram/feed/survey/j;->f()I

    move-result v0

    sget v1, Lcom/instagram/feed/survey/aj;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/instagram/feed/survey/q;->c:Lcom/instagram/feed/g/a;

    invoke-interface {v0}, Lcom/instagram/feed/g/a;->p_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->c()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/feed/survey/q;->e:Landroid/app/Activity;

    sget v2, Lcom/facebook/aw;->sentiment_tool_dialog:I

    sget v3, Lcom/facebook/ba;->IgDialog:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->survey_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    .line 117
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    invoke-direct {p0, v0, p1}, Lcom/instagram/feed/survey/q;->a(Landroid/app/Dialog;Lcom/instagram/feed/survey/j;)V

    .line 118
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/feed/survey/r;

    invoke-direct {v1, p0}, Lcom/instagram/feed/survey/r;-><init>(Lcom/instagram/feed/survey/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    invoke-virtual {p1}, Lcom/instagram/feed/survey/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-direct {p0, p1}, Lcom/instagram/feed/survey/q;->c(Lcom/instagram/feed/survey/j;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 587
    iput-boolean v1, p0, Lcom/instagram/feed/survey/q;->l:Z

    .line 588
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    invoke-interface {v0, p0}, Lcom/instagram/feed/survey/m;->b(Lcom/instagram/feed/survey/i;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 596
    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput p1, p0, Lcom/instagram/feed/survey/q;->m:I

    .line 612
    return-void
.end method

.method public final b(Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 1
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/instagram/feed/survey/q;->g:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    .line 557
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    invoke-interface {v0, p0}, Lcom/instagram/feed/survey/m;->a(Lcom/instagram/feed/survey/i;)V

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->e()V

    .line 561
    return-void
.end method

.method public final b(Lcom/instagram/feed/survey/j;)V
    .locals 1
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/instagram/feed/survey/q;->f:Lcom/instagram/feed/survey/j;

    .line 549
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/instagram/feed/survey/q;->d:Lcom/instagram/feed/survey/m;

    invoke-interface {v0, p0}, Lcom/instagram/feed/survey/m;->a(Lcom/instagram/feed/survey/i;)V

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/instagram/feed/survey/q;->d()V

    .line 553
    return-void
.end method
