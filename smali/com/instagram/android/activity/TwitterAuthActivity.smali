.class public Lcom/instagram/android/activity/TwitterAuthActivity;
.super Lcom/instagram/android/activity/ab;
.source "TwitterAuthActivity.java"


# instance fields
.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/activity/ab;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/activity/TwitterAuthActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/activity/TwitterAuthActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/activity/TwitterAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/instagram/ui/dialog/f;

    invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V

    .line 30
    sget v1, Lcom/facebook/az;->loading:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V

    .line 33
    new-instance v1, Lcom/instagram/android/activity/y;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/activity/y;-><init>(Lcom/instagram/android/activity/TwitterAuthActivity;Lcom/instagram/ui/dialog/f;)V

    invoke-static {p0, p1, p2, v1}, Lcom/instagram/share/f/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/instagram/share/f/k;)V

    .line 57
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/activity/TwitterAuthActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/activity/TwitterAuthActivity;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-class v2, Lcom/instagram/android/activity/TwitterAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/activity/TwitterAuthActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/activity/TwitterAuthActivity;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/facebook/av;->username:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/facebook/av;->password:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/instagram/android/activity/TwitterAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/az;->twitter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .locals 4

    .prologue
    .line 74
    sget v0, Lcom/facebook/av;->done:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/activity/z;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/z;-><init>(Lcom/instagram/android/activity/TwitterAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v0, Lcom/facebook/av;->username:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/activity/TwitterAuthActivity;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/activity/TwitterAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/az;->username:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 84
    sget v0, Lcom/facebook/av;->follow_instagram_text:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->followInstagram:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/activity/TwitterAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    invoke-super {p0}, Lcom/instagram/android/activity/ab;->onStop()V

    .line 91
    return-void
.end method
