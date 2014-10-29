.class final Lcom/instagram/android/fragment/dj;
.super Ljava/lang/Object;
.source "PreloadOptionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/l/b/a;

.field final synthetic b:Lcom/instagram/android/fragment/dh;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dh;Lcom/instagram/l/b/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/android/fragment/dj;->b:Lcom/instagram/android/fragment/dh;

    iput-object p2, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/l/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter "isChecked"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/l/b/a;

    invoke-virtual {v0, p2}, Lcom/instagram/l/b/a;->c(Z)Z

    .line 57
    return-void
.end method
