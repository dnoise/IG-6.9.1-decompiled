.class final Lcom/instagram/common/w/h;
.super Ljava/lang/Object;
.source "ShakeSensorHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/common/w/f;


# direct methods
.method constructor <init>(Lcom/instagram/common/w/f;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/common/w/h;->a:Lcom/instagram/common/w/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/common/w/h;->a:Lcom/instagram/common/w/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/common/w/f;->a(Lcom/instagram/common/w/f;Z)Z

    .line 41
    iget-object v0, p0, Lcom/instagram/common/w/h;->a:Lcom/instagram/common/w/f;

    invoke-static {v0}, Lcom/instagram/common/w/f;->b(Lcom/instagram/common/w/f;)Lcom/instagram/common/w/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/w/a;->b()V

    .line 42
    return-void
.end method
