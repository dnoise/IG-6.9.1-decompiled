.class public final Lcom/instagram/camera/g;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# direct methods
.method public static a(Lcom/instagram/camera/k;)I
    .locals 4
    .parameter

    .prologue
    .line 124
    const-string v0, "pref_camera_exposure_key"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/instagram/camera/k;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v1

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid exposure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    :try_start_0
    const-string v0, "pref_local_version_key"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51
    :goto_0
    if-nez v0, :cond_0

    .line 60
    :goto_1
    return-void

    .line 48
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    const-string v2, "pref_local_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public static a(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    const-string v1, "pref_camera_id_key_v2"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x1e

    .line 210
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 212
    const-string v2, "pref_stop_delay_average_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string v2, "pref_stop_delay_samples_key"

    add-int/lit8 v3, p2, 0x1

    if-le v3, v0, :cond_0

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void

    .line 213
    :cond_0
    add-int/lit8 v0, p2, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x898

    .line 146
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 153
    invoke-static {v0}, Lcom/instagram/camera/g;->a(Landroid/hardware/Camera$Size;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x4080

    div-float/2addr v3, v4

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3dcccccd

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 159
    if-nez v1, :cond_2

    move-object v1, v0

    .line 164
    :cond_2
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v3, v6, :cond_3

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    if-lt v3, v4, :cond_4

    :cond_3
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    if-ge v3, v4, :cond_5

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-ge v3, v6, :cond_5

    :cond_4
    move-object v1, v0

    .line 168
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Considered picture size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Candidate picture size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 173
    :cond_6
    if-eqz v1, :cond_7

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Selected picture size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_0

    .line 177
    :cond_7
    const-string v0, "CameraSettings"

    const-string v1, "No supported picture size found"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/hardware/Camera$Size;)Z
    .locals 2
    .parameter

    .prologue
    .line 134
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SD4930UR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    const/16 v1, 0xa20

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    const/16 v1, 0x798

    if-ne v0, v1, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 183
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 185
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 197
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 190
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 192
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v2, :cond_1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, v3, :cond_1

    .line 193
    invoke-virtual {p2, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method public static b(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    :try_start_0
    const-string v0, "pref_version_key"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 70
    :goto_0
    if-nez v0, :cond_0

    .line 111
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    const-string v2, "pref_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public static c(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter

    .prologue
    .line 114
    const-string v0, "pref_camera_id_key_v2"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter

    .prologue
    .line 201
    const-string v0, "pref_stop_delay_samples_key"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter

    .prologue
    .line 205
    const-string v0, "pref_stop_delay_average_key"

    const/16 v1, 0x190

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
