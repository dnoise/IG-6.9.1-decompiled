.class final Lcom/instagram/cliffjumper/edit/photo/a/n;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/n;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 896
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/x;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/n;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {v0, v1, v2}, Lcom/instagram/cliffjumper/edit/photo/a/x;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 897
    return-void
.end method
