.class final Lcom/instagram/android/fragment/go;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fy;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/instagram/android/fragment/go;->a:Lcom/instagram/android/fragment/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/instagram/android/fragment/go;->a:Lcom/instagram/android/fragment/fy;

    invoke-static {v0}, Lcom/instagram/android/fragment/fy;->a(Lcom/instagram/android/fragment/fy;)Lcom/instagram/o/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/o/b/a;->c()V

    .line 107
    return-void
.end method
