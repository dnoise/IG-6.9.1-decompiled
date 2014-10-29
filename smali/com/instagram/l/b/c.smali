.class final Lcom/instagram/l/b/c;
.super Ljava/lang/Object;
.source "UserSharedPreference.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field final synthetic a:Lcom/instagram/l/b/b;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/instagram/l/b/b;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/instagram/l/b/c;->a:Lcom/instagram/l/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Lcom/instagram/l/b/b;->a(Lcom/instagram/l/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-static {p1}, Lcom/instagram/l/b/b;->b(Lcom/instagram/l/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p1}, Lcom/instagram/l/b/b;->b(Lcom/instagram/l/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    :cond_0
    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 169
    :cond_0
    return-object p0
.end method

.method public final commit()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 150
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/instagram/l/b/c;->a:Lcom/instagram/l/b/b;

    invoke-static {v0}, Lcom/instagram/l/b/b;->b(Lcom/instagram/l/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    :goto_0
    return-object p0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/instagram/l/b/c;->a:Lcom/instagram/l/b/b;

    invoke-static {v0}, Lcom/instagram/l/b/b;->b(Lcom/instagram/l/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 213
    :goto_0
    return-object p0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/instagram/l/b/c;->a:Lcom/instagram/l/b/b;

    invoke-static {v0}, Lcom/instagram/l/b/b;->b(Lcom/instagram/l/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    :goto_0
    return-object p0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/instagram/l/b/c;->a:Lcom/instagram/l/b/b;

    invoke-static {v0}, Lcom/instagram/l/b/b;->b(Lcom/instagram/l/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    :goto_0
    return-object p0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/instagram/l/b/c;->a:Lcom/instagram/l/b/b;

    invoke-static {v0}, Lcom/instagram/l/b/b;->b(Lcom/instagram/l/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    :goto_0
    return-object p0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/instagram/l/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/instagram/l/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    :cond_0
    return-object p0
.end method
