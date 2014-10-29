.class final Lcom/instagram/ui/widget/imagebutton/b;
.super Landroid/os/Handler;
.source "IgImageButton.java"


# instance fields
.field final synthetic a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;


# direct methods
.method private constructor <init>(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/instagram/ui/widget/imagebutton/b;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/ui/widget/imagebutton/IgImageButton;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/imagebutton/b;-><init>(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/b;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->d(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/b;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V

    goto :goto_0
.end method
