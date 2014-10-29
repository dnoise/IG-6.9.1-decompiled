.class public Lcom/facebook/al;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/c;

.field private c:Lcom/facebook/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static a(Lcom/facebook/k;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    const-string v1, "request"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 140
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/al;Lcom/facebook/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/al;->a(Lcom/facebook/s;)V

    return-void
.end method

.method private a(Lcom/facebook/s;)V
    .locals 3
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/al;->c:Lcom/facebook/k;

    .line 89
    iget v0, p1, Lcom/facebook/s;->a:I

    sget v1, Lcom/facebook/t;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 92
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string v2, "com.facebook.LoginActivity:Result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 95
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 96
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0, v2}, Lcom/facebook/al;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/facebook/al;->finish()V

    .line 100
    return-void

    .line 89
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/c;->a(IILandroid/content/Intent;)Z

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/facebook/aw;->com_facebook_login_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/al;->setContentView(I)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v0, "callingPackage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/al;->a:Ljava/lang/String;

    .line 59
    const-string v0, "authorizationClient"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/c;

    iput-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    invoke-virtual {v0, p0}, Lcom/facebook/c;->a(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    new-instance v1, Lcom/facebook/am;

    invoke-direct {v1, p0}, Lcom/facebook/am;-><init>(Lcom/facebook/al;)V

    invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/r;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    new-instance v1, Lcom/facebook/an;

    invoke-direct {v1, p0}, Lcom/facebook/an;-><init>(Lcom/facebook/al;)V

    invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/l;)V

    .line 84
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/al;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/al;->a:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/facebook/c;

    invoke-direct {v0}, Lcom/facebook/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    .line 63
    invoke-virtual {p0}, Lcom/facebook/al;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    iput-object v0, p0, Lcom/facebook/al;->c:Lcom/facebook/k;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->a()V

    .line 121
    sget v0, Lcom/facebook/av;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/facebook/al;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/facebook/al;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    iget-object v1, p0, Lcom/facebook/al;->c:Lcom/facebook/k;

    invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/k;)V

    .line 114
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    const-string v0, "callingPackage"

    iget-object v1, p0, Lcom/facebook/al;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "authorizationClient"

    iget-object v1, p0, Lcom/facebook/al;->b:Lcom/facebook/c;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 130
    return-void
.end method
