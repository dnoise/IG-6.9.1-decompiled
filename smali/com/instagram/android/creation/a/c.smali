.class final Lcom/instagram/android/creation/a/c;
.super Ljava/lang/Object;
.source "ChildFragmentShareModeSelectorDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/android/creation/a/c;->a:Lcom/instagram/android/creation/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/creation/a/c;->a:Lcom/instagram/android/creation/a/a;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/android/creation/a/a;->b(I)V

    .line 43
    return-void
.end method
