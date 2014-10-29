.class public final Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;
.super Lcom/instagram/cliffjumper/edit/common/ui/c;
.source "TiltShiftInfo.java"


# instance fields
.field private a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

.field private b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    sget v0, Lcom/facebook/az;->tiltshift:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/facebook/au;->tool_tilt:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/c;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->b:Landroid/content/res/Resources;

    .line 19
    return-void
.end method


# virtual methods
.method public final d()Lcom/instagram/cliffjumper/edit/common/ui/a;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/k;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    return-object v0
.end method
