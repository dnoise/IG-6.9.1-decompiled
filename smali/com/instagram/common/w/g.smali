.class final Lcom/instagram/common/w/g;
.super Lcom/instagram/common/w/a;
.source "ShakeSensorHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/w/f;


# direct methods
.method constructor <init>(Lcom/instagram/common/w/f;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/instagram/common/w/g;->a:Lcom/instagram/common/w/f;

    invoke-direct {p0}, Lcom/instagram/common/w/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/common/w/g;->a:Lcom/instagram/common/w/f;

    invoke-static {v0}, Lcom/instagram/common/w/f;->a(Lcom/instagram/common/w/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/instagram/common/w/g;->a:Lcom/instagram/common/w/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/common/w/f;->a(Lcom/instagram/common/w/f;Z)Z

    .line 29
    iget-object v0, p0, Lcom/instagram/common/w/g;->a:Lcom/instagram/common/w/f;

    invoke-virtual {v0}, Lcom/instagram/common/w/f;->a()V

    .line 31
    :cond_0
    return-void
.end method
