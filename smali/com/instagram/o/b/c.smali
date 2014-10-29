.class final Lcom/instagram/o/b/c;
.super Ljava/lang/Object;
.source "AutoUpdateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/instagram/o/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/o/b/a;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/instagram/o/b/c;->b:Lcom/instagram/o/b/a;

    iput-object p2, p0, Lcom/instagram/o/b/c;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/o/b/c;->b:Lcom/instagram/o/b/a;

    invoke-static {v0}, Lcom/instagram/o/b/a;->a(Lcom/instagram/o/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/o/b/c;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method
