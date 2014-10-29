.class final Lcom/instagram/ui/menu/v;
.super Ljava/lang/Object;
.source "SimpleSwitchRowViewBinder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/menu/aa;


# direct methods
.method constructor <init>(Lcom/instagram/ui/menu/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/ui/menu/v;->a:Lcom/instagram/ui/menu/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/ui/menu/v;->a:Lcom/instagram/ui/menu/aa;

    invoke-virtual {v0, p2}, Lcom/instagram/ui/menu/aa;->a(Z)V

    .line 30
    iget-object v0, p0, Lcom/instagram/ui/menu/v;->a:Lcom/instagram/ui/menu/aa;

    invoke-virtual {v0}, Lcom/instagram/ui/menu/aa;->d()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 31
    return-void
.end method
